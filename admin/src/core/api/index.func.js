// Libraries
// import QRCode from 'qrcode';

// Core
import { api } from '../global/function/index.func'; // Function
import Env from '../constants/json/Env.json'; // Constants


let env = 'prod';

export const authentication = async (data) => { return await api({ url: `${Env[env].url}/login`, method: 'post', data: data }).then(res => res.data); }
export const logout = async (data) => { return await api({ url: `${Env[env].url}/logout`, method: 'post', data: data }).then(res => res.data); }
export const profile = async (id) => { return await api({ url: `${Env[env].url}/profile/${id}`, method: 'get' }).then(res => res.data); }
export const dashboard = async (table) => { return await api({ url: `${Env[env].url}/dashboard/${table}`, method: 'get' }).then(res => res.data); }
export const records = async ({ table, data }) => { return await api({ url: `${Env[env].url}/list/${table}`, method: 'post', data: data }).then(res => res.data); }
export const specific = async ({ table, id }) => { return await api({ url: `${Env[env].url}/specific/${table}/${id}`, method: 'get' }).then(res => res.data); }
export const save = async ({ table, data }) => { return await api({ url: `${Env[env].url}/save/${table}`, method: 'post', data: data }).then(res => res.data); }
export const update = async ({ table, data }) => { return await api({ url: `${Env[env].url}/update/${table}`, method: 'post', data: data }).then(res => res.data); }
export const dropdown = async({ table, data}) => { return await api({ url: `${Env[env].url}/dropdown/${table}`, method: 'post', data: data }).then(res => [{ id: 0, name: '-- SELECT AN ITEM BELOW --' }].concat(res.data)); }
export const series = async(table) => { return await api({ url: `${Env[env].url}/series/${table}`, method: 'get' }).then(res => res.data); }
export const look = async ({ table, data }) => { return await api({ url: `${Env[env].url}/search/${table}`, method: 'post', data: data }).then(res => res.data); }