// Custom functions
const global = require('../../functions/global');
const Builder = require('../../functions/builder');

class Programs {
    specific = async (id) => { return (await new Builder(`tbl_programs`).select().condition(`WHERE id= ${id}`).build()).rows; }

    list = async (data) => { 
        return (await new Builder(`tbl_programs`)
                                        .select()
                                        .condition(`${data.status !== undefined ? `WHERE status= ${data.status}` : ''} ORDER BY date_created DESC`)
                                        .build()).rows; 
    }

    search = async (data) => {
        return (await new Builder(`tbl_programs`)
                                        .select()
                                        .condition(`WHERE title LIKE '%${data.condition}%' OR subtitle LIKE '%${data.condition}%' OR 
                                                            description LIKE '%${data.condition}%' OR series_no LIKE '%${(data.condition).toUpperCase()}%'`)
                                        .build()).rows;
    }

    save = async (data) => {
        await new Builder(`tbl_programs`)
                            .insert({ columns: `series_no, title, subtitle, date, description, photo, status, created_by, date_created`, 
                                            values: `'${global.randomizer(7)}', '${data.title}', ${data.subtitle !== '' ? `'${data.subtitle}'` : null}, '${data.date}', 
                                                            '${data.description}', ${data.photo !== undefined ?  `'${data.photo}'` : null}, ${data.status ? 1 : 0},
                                                            ${data.created_by}, CURRENT_TIMESTAMP` })
                            .build();
        
        return { result: 'success', message: 'Successfully saved!' }
    }

    update = async (data) => {
        await new Builder(`tbl_programs`)
                            .update(`title= '${data.title}', subtitle= ${data.subtitle !== '' || data.subtitle !== null ? `'${data.subtitle}'` : null}, date= '${data.date}', 
                                            description= '${data.description}', photo= ${data.photo !== undefined && data.photo !== null ? `'${data.photo}'` : null},
                                            status= ${data.status ? 1 : 0}, updated_by= ${data.updated_by}, date_updated= CURRENT_TIMESTAMP`)
                            .condition(`WHERE id= ${data.id}`)
                            .build();
        
        return { result: 'success', message: 'Successfully updated!' }
    }
}

module.exports = Programs;