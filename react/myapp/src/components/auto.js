import React ,{useState, useEffect} from 'react';
import {getAllAutos, guardarAuto} from "../services/AutoServices";
import ModalComponent from './modalAutoNuevo';
import { Button } from 'react-bootstrap';

const autosInicial=[
    {
        id: 1,
        marca: "",
        color: "",
        usuario: {}
    }
];


const AutoComponent= ()=>{


    const [autos,setAutos] = useState(autosInicial);

    
    //Obtener lista de autos
    const obtenerAutos=async()=>{
        setAutos(await getAllAutos());
    }

    //useEffect: ejecuta una funcion segun el momento de ciclo de vida
    useEffect(
        ()=>{obtenerAutos()}, []
    );


    const autoAgregar = async (auto) => {
        await guardarAuto(auto)
        setAutos(await getAllAutos())
    }
    

    /* const autoEditar=(autoEditado)=>{
        const actualizarAuto = autos.map(auto => (auto.id === autoEditado.key ? autoEditado : auto))
        setAutos(actualizarAuto)
    } 
 */

    return(
        <>
            <h1>respuesta de la api: </h1>
            
                <div className="card col-3">
                    <div className="card-body d-flex justify-content-center">
                        <ModalComponent 
                        autoAgregar={autoAgregar}/>
                    </div>
                </div>

                {
                autos.map(auto => 
                    <div className="card" key={auto.id}>
                        <div className="card-body">
                            <h5 className="card-title">{auto.marca}</h5>
                            <p className="card-text">{auto.id} {auto.color}</p>
                            
                            <Button><i class="bi bi-plus-lg" variant="primary">Editar Auto</i></Button>
                        
                        </div>
                    </div>
                    
                )
                }


                

        
                
        </>
    );
}

export default AutoComponent;