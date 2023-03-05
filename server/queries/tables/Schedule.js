// Libraires
const nodemailer = require('nodemailer');
const mailgen = require('mailgen');

// Custom functions
const global = require('../../functions/global');
const Builder = require('../../functions/builder');

class Schedule {
    list = async () => {
        return (await new Builder(`tbl_services AS srvc`)
                                        .select(`srvc.id, srvc.furr_parent_id, srvc.pet_id, srvc.docu_id, srvc.payment_id, srvc.schedule_id, sched.series_no, fp.contact_no,
                                                        fp.email, fp.fname, fp.lname, sched.appointment_id, sched.evaluated_by, sched.status, sched.date_filed, sched.date_evaluated, srvc.type`)
                                        .join({ table: `tbl_furr_parent AS fp`, condition: `srvc.furr_parent_id = fp.id`, type: ` LEFT` })
                                        .join({ table: `tbl_schedule AS sched`, condition: `srvc.schedule_id = sched.id`, type: `LEFT` })
                                        .join({ table: `tbl_documents AS docu`, condition: `srvc.docu_id = docu.id`, type: `LEFT` })
                                        .join({ table: `tbl_appointments AS appnt`, condition: `sched.appointment_id = appnt.id`, type: `LEFT` })
                                        .condition(`WHERE srvc.schedule_id IS NOT NULL`)
                                        .except(`WHERE docu.status = 'pending' AND sched.status = 'pending' ORDER BY 15 DESC`)
                                        .build()).rows;
    }

    search = async (data) => {
        return (await new Builder(`tbl_services AS srvc`)
                                        .select(`srvc.id, srvc.furr_parent_id, srvc.pet_id, srvc.docu_id, srvc.payment_id, srvc.schedule_id, sched.series_no, fp.contact_no,
                                                        fp.email, fp.fname, fp.lname, sched.appointment_id, sched.evaluated_by, sched.status, sched.date_filed, sched.date_evaluated, srvc.type`)
                                        .join({ table: `tbl_furr_parent AS fp`, condition: `srvc.furr_parent_id = fp.id`, type: ` LEFT` })
                                        .join({ table: `tbl_schedule AS sched`, condition: `srvc.schedule_id = sched.id`, type: `LEFT` })
                                        .join({ table: `tbl_documents AS docu`, condition: `srvc.docu_id = docu.id`, type: `LEFT` })
                                        .join({ table: `tbl_appointments AS appnt`, condition: `sched.appointment_id = appnt.id`, type: `LEFT` })
                                        .condition(`WHERE (sched.series_no LIKE '%${data.condition}%' OR fp.email LIKE '%${(data.condition).toLowerCase()}%' OR
                                                            fp.fname LIKE '%${data.condition}%' OR fp.lname LIKE '%${data.condition}%') AND srvc.schedule_id IS NOT NULL`)
                                        .except(`WHERE docu.status = 'pending' AND sched.status = 'pending' ORDER BY 15 DESC`)
                                        .build()).rows;
    }

    approve = async (data) => {
        let config = { service: 'gmail', auth: { user: global.USER, pass: global.PASS } }
        let transporter = nodemailer.createTransport(config);
        let generator =  new mailgen({ theme: 'default', product: { name: 'QC Animal Care & Adoption Center', link: 'https://mailgen.js/' } });

        await new Builder(`tbl_schedule`)
                            .update(`status= 'approved', evaluated_by= ${data.evaluated_by}, date_evaluated= CURRENT_TIMESTAMP`)
                            .condition(`WHERE id= ${data.schedule_id}`)
                            .build();

        let list = (await new Builder(`tbl_services AS srvc`)
                                            .select(`srvc.id, srvc.furr_parent_id, srvc.pet_id, srvc.docu_id, srvc.payment_id, srvc.schedule_id, sched.series_no, 
                                                            fp.email, fp.fname, fp.lname, sched.appointment_id, sched.status, sched.date_filed, srvc.type`)
                                            .join({ table: `tbl_furr_parent AS fp`, condition: `srvc.furr_parent_id = fp.id`, type: `LEFT` })
                                            .join({ table: `tbl_schedule AS sched`, condition: `srvc.schedule_id = sched.id`, type: `LEFT` })
                                            .join({ table: `tbl_appointments AS appnt`, condition: `sched.appointment_id = appnt.id`, type: `LEFT` })
                                            .condition(`WHERE srvc.schedule_id IS NOT NULL ORDER BY 13 DESC`)
                                            .build()).rows;

        let mail = generator.generate({
            body: {
                name: 'Fur Mom/Dad',
                intro: `Thank you for taking the time to be interviewed as part of the pet adoption process. 

                        We are pleased to inform you that you <b>PASSED</b> the interview. You can now proceed for the next phase by clicking the button below for the payment details.
                `,
                action: {
                    button: {
                        text: 'Pay here',
                        link: `http://localhost:3000/payment/${btoa(data.id)}`
                    }
                },
                outro: 'Please contact me for additional help.'
            }
        });

        // transporter.sendMail({ from: global.USER, to: data.email, subject: `Application Interview Status`, html: mail });
        return { result: 'success', message: 'Interview passed!', list: list }
    }

    reject = async (data) => {
        let config = { service: 'gmail', auth: { user: global.USER, pass: global.PASS } }
        let transporter = nodemailer.createTransport(config);
        let generator =  new mailgen({ theme: 'default', product: { name: 'QC Animal Care & Adoption Center', link: 'https://mailgen.js/' } });

        let sched = (await new Builder(`tbl_schedule`).select().condition(`WHERE id= ${data.schedule_id}`).build()).rows[0];
        let appnt = (await new Builder(`tbl_appointments`).select().condition(`WHERE id= ${sched.appointment_id}`).build()).rows[0];
        
        await new Builder(`tbl_schedule`).update(`status= 'failed', date_evaluated= CURRENT_TIMESTAMP`).condition(`WHERE id= ${data.schedule_id}`).build();
        await new Builder(`tbl_appointments`).update(`slot= ${parseInt(appnt.slot) + 1}`).condition(`WHERE id= ${sched.appointment_id}`).build();
        await new Builder(`tbl_pets`).update(`is_adopt= 0`).condition(`WHERE id= ${data.pet_id}`).build();
        await new Builder(`tbl_services`).update(`status= 'cancelled', date_evaluated= CURRENT_TIMESTAMP`).condition(`WHERE id= ${data.id}`).build();

        let list = (await new Builder(`tbl_services AS srvc`)
                                            .select(`srvc.id, srvc.furr_parent_id, srvc.pet_id, srvc.docu_id, srvc.payment_id, srvc.schedule_id, sched.series_no, 
                                                            fp.email, fp.fname, fp.lname, sched.appointment_id, sched.status, sched.date_evaluated, srvc.type`)
                                            .join({ table: `tbl_furr_parent AS fp`, condition: `srvc.furr_parent_id = fp.id`, type: `LEFT` })
                                            .join({ table: `tbl_schedule AS sched`, condition: `srvc.schedule_id = sched.id`, type: `LEFT` })
                                            .join({ table: `tbl_appointments AS appnt`, condition: `sched.appointment_id = appnt.id`, type: `LEFT` })
                                            .condition(`WHERE srvc.schedule_id IS NOT NULL ORDER BY 13 DESC`)
                                            .build()).rows

        let mail = generator.generate({
            body: {
                name: 'Fur Mom/Dad',
                intro: `We really appreciate you taking the time to come in for an interview regarding your application to adopt a pet from the QC Animal Care and Adoption Center. 
                It was a pleasure to us to meet and thank you for your interest in adopting our pets. Unfortunately, 
                we are sorry to inform you that you failed the interview. `,
                
                outro: 'Please contact me for additional help.'
            }
        });

        // transporter.sendMail({ from: global.USER, to: data.email, subject: `Application Failed`, html: mail });
        return { result: 'success', message: 'Interview failed!', list: list }
    }

    save = async (data) => {
        let config = { service: 'gmail', auth: { user: global.USER, pass: global.PASS } }
        let transporter = nodemailer.createTransport(config);
        let generator =  new mailgen({ theme: 'default', product: { name: 'QC Animal Care & Adoption Center', link: 'https://mailgen.js/' } });

        let appointment = (await new Builder(`tbl_appointments`).select().condition(`WHERE month= ${data.appmonth} AND day= ${data.appday} AND year= ${data.appyear}`).build()).rows[0];
        let adopt = (await new Builder(`tbl_services`).select().condition(`WHERE id= ${data.id}`).build()).rows[0];

        
        let sched = (await new Builder(`tbl_schedule`)
                                                .insert({ columns: `series_no, furr_parent_id, appointment_id, status, date_filed`, 
                                                                values: `'${global.randomizer(7)}', ${data.adopter_id}, ${appointment.id}, 'pending', CURRENT_TIMESTAMP` })
                                                .condition(`RETURNING id`)
                                                .build()).rows[0];
                                                
        await new Builder(`tbl_appointments`).update(`slot= ${appointment.slot - 1}`).condition(`WHERE id= ${appointment.id}`).build();
        await new Builder(`tbl_pets`).update(`is_adopt= 1`).condition(`WHERE id= ${adopt.pet_id}`).build();
        await new Builder(`tbl_services`).update(`schedule_id= ${sched.id}, date_filed= CURRENT_TIMESTAMP`).condition(`WHERE id= ${data.id}`).build();

        let mail = generator.generate({
            body: {
                name: 'Fur Mom/Dad',
                intro: `We would like to confirm your set schedule on <b>${appointment.month}/${appointment.day}/${appointment.year}</b>. 
                On this day, the QC Animal Care and Adoption Center staff will conduct an interview regarding your application and you will 
                have the chance to see your preferred pet at our shelter located at Clemente St.,Lupang Pangako, Payatas, Quezon City, Philippines. 
                We are looking forward to seeing you. `,
                
                outro: 'Please contact me for additional help.'
            }
        });

        // transporter.sendMail({ from: global.USER, to: data.email, subject: `Appointment Schedule`, html: mail });
        return { result: 'success', message: 'Successfully saved!' }
    }
}

module.exports = Schedule;