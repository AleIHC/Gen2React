//axios
import axios from 'axios';

//establer la ruta por default
const rutaBase = "http://localhost:9080/api2";

const usuarioId = 1;

// funcion de llamado
const getAllAutos = async()=>{
    const respuesta = await axios.get(rutaBase+"/autos/getall");
    console.log(respuesta.data);
    return respuesta.data;
}

const getAuto = async(id)=>{
    const respuesta = await axios.get(rutaBase+"/obtener/auto/"+id);
    console.log(respuesta.data);
    return respuesta.data;
}

const guardarAuto = async(auto) => {
    const respuesta = await axios.post(rutaBase + "/guardar/auto?usuarioId=" + usuarioId, auto)
    return respuesta.data;
}


/* const editarAuto = async(auto)=>{
    const respuesta = await axios.put(rutaBase + "/editar/auto?id=" + id, auto);
    return respuesta.data;
} */

export {getAllAutos,getAuto, guardarAuto}