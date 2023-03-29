// Libraries
import { solid } from "@fortawesome/fontawesome-svg-core/import.macro";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { Avatar, Box, Container, Skeleton, Stack, TextField, Typography } from "@mui/material";
import { useContext } from "react";

// Core
import { ListCntxt } from "core/context/ListCntxt.func"; // Context
import { useGet, usePost } from "core/global/function/index.func"; // Function
import { look, records } from "core/api/index.func"; // APIs

// Constants
import { item, search } from "../index.style"; // Styles

const PetProgram = () => {
    const { list, setList } = useContext(ListCntxt);
    const { mutate: find, isLoading: finding } = usePost({ fetch: look, onSuccess: data => setList(data) });
    const { isFetching: fetching } = 
        useGet({ key: ['programs_list'], fetch: records({ table: 'tbl_programs', data: { status: 1 } }), options: { refetchOnWindowFocus: false }, onSuccess: data => setList(data) });

    return (
        <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" sx= {{ overflow: 'hidden', height: '100%' }}>
            <Container maxWidth= "lg" sx= {{ overflowY: 'scroll', height: '100%', '&::-webkit-scrollbar': { display: 'none' } }}>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" spacing= { 1 }>
                    <Typography variant= "h6" sx= {{ fontFamily: 'Boldstrom', color: '#444444' }}>Pet Programs</Typography>
                    <Typography sx= {{ fontWeight:'600'}}>We offer free vaccination to our beloved pets. Help them be free from sickness and continue to wag their tail with energy and happiness. 
                        Slide learn more for more details.</Typography>
                </Stack>
                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" spacing= { 1 } sx= {{ marginTop: '20px' }}>
                    <Stack direction= "row" justifyContent= "flex-end" alignItems= "center">
                        <form autoComplete= "off">
                            <Box sx= { search }>
                                <FontAwesomeIcon icon= { solid('magnifying-glass') } size= "sm" style= {{ margin: '8px' }} />
                                <TextField variant= "standard" size= "small" fullWidth InputProps= {{ disableUnderline: true }} placeholder= "Search..." sx= {{ padding: '5px 0 0 0' }}
                                    onChange= { e => { find({ table: 'tbl_programs', data: { condition: e.target.value } }); } } />
                            </Box>
                        </form>
                    </Stack>
                    <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" spacing= { 2 } sx= {{ padding: '0 0 40px 0' }}>
                        { !fetching && !finding ? list?.length > 0 ?
                            list?.map((data, index) => (
                                <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" key= { index } spacing= { 1 } sx= { item }>
                                    <Stack direction= "row" justifyContent= "flex-end" alignItems= "center">
                                        <Typography variant= "body2" sx= {{ fontWeight: 'bold', color: '#444444' }}>{ data.date }</Typography>
                                    </Stack>
                                    { data.photo !== null ?
                                        <Stack direction= "row" justifyContent= "center" alignItems= "center" sx= {{ width: '100%', height: '250px', overflow: 'hidden', borderRadius: '8px' }}>
                                            <Avatar src= { JSON.parse(data.photo) } variant= "square" sx= {{ width: 'auto', height: '100%' }} />
                                        </Stack> : '' }
                                    <Typography variant= "h6" sx= {{ fontFamily: 'Tommy Bolder', color: '#444444' }}>{ data.title }</Typography>
                                    <Typography sx= {{ fontFamily: 'Tommy Bold', color: '#444444' }}>{ data.subtitle }</Typography>
                                    <Typography sx= {{ fontFamily: 'Gilroy Light', color: '#555555', fontWeight:'600', fontSize:'16px' }}>{ data.description }</Typography>
                                </Stack>
                            )) :
                            <Stack direction= "row" justifyContent= "center" alignItems= "center" 
                                sx= {{ backgroundColor: '#FFFFFF', padding: '10px', border: 'solid 1px #F3F3F3', borderRadius: '10px' }}>
                                <Typography>No record/s found!</Typography>
                            </Stack> :
                            <Stack direction= "column" justifyContent= "flex-start" alignItems= "stretch" sx= { item }>
                                <Stack direction= "row" justifyContent= "flex-end" alignItems= "center"><Skeleton variant= "text" sx= {{ fontSize: '1rem', width: '20%' }} /></Stack>
                                <Skeleton variant= "rounded" sx= {{ width: '100%', height: '250px', margin: '10px 0 20px 0' }} />
                                <Skeleton variant= "text" sx= {{ fontSize: '1.5rem', width: '20%' }} />
                                <Skeleton variant= "text" sx= {{ fontSize: '1.2rem', width: '15%' }} />
                                <Skeleton variant= "rounded" sx= {{ width: '100%', height: '100px', marginTop: '10px' }} />
                            </Stack> }
                    </Stack>
                </Stack>
            </Container>
        </Stack>
    );
}

export default PetProgram;