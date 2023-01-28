// Libraries
import { Box, Grid, Stack, Typography } from "@mui/material";
import { useContext } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";

// Core
import { FormCntxt } from "core/context/FormCntxt.func"; // Context
import { save, specific } from "core/api/index.func"; // API
import { successToast, useGet, usePost } from "core/global/function/index.func"; // Function

// Constants
import { btntxt } from "../index.style"; // Styles

// Layouts
import ValidId from "./documents/ValidId";
import Picture from "./documents/Picture";
import PetCage from "./documents/PetCage";

const Documents = () => {
    const { id, userid } = useParams();
    const navigate = useNavigate();
    const { handleSubmit, setError, setValue } = useContext(FormCntxt);

    const { isFetching: fetching } = 
        useGet({ key: ['usr_specific'], fetch: specific({ table: 'tbl_adopt_info', id: atob(userid) }), options: { refetchOnWindowFocus: false },
            onSuccess: (data) => {
                if(Array.isArray(data)) 
                    for(let count = 0; count < Object.keys(data[0]).length; count++) { 
                        let _name = Object.keys(data[0])[count];
                        setValue(_name, data[0][_name]);
                    }
            }
        });
    
    const { mutate: saving } = 
        usePost({ fetch: save,
            onSuccess: data => {
                successToast(data.message, 3000, navigate(`/pets/${id}/adopt/${userid}/${btoa(data.id)}/appointment`, { replace: true }));
            }
        });

    return (
        <Stack direction= "column" justifyContent= "space-between" alignItems= "stretch" spacing= { 3 } sx= {{ height: '100%' }}>
            <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" spacing= { 2 }>
                <Typography variant= "h5">Documentary Requirements</Typography>
                <ValidId fetching= { fetching } />
                <Picture fetching= { fetching } />
                <PetCage fetching= { fetching } />
            </Stack>
            <Grid container direction= "row" justifyContent= "space-between" alignItems= "center">
                <Grid item xs= { 5 } sm= { 4 } md= { 5 } lg= { 3 }>
                    <Box sx= { btntxt } component= { Link } to= { `/pets/${id}/adopt/${userid}/personal-information` }>Back</Box>
                </Grid>
                <Grid item xs= { 5 } sm= { 4 } md= { 5 } lg= { 3 }>
                    <Box sx= { btntxt } onClick= { handleSubmit(data => {
                        let _errors = [];

                        data['pet_id'] = atob(id);
                        if(data.valid_id === undefined) { _errors.push(true); setError('valid_id', { message: 'This field is required!' }); }
                        if(data.picture=== undefined) { _errors.push(true); setError('picture', { message: 'This field is required!' }); }
                        if(data.pet_cage=== undefined) { _errors.push(true); setError('pet_cage', { message: 'This field is required!' }); }

                        if(!(_errors.length > 0)) { saving({ table: 'tbl_adopt_documents', data: data }); }
                    })}>Next</Box>
                </Grid>
            </Grid> 
        </Stack>
    );
}

export default Documents;