import { useState } from "react";

function Ejemplo2(){
//useState
    const [texto,setTexto]= useState("");
   // var texto = "";
   // texto ="texto modificado";
    const [valorinput,setValorinput]= useState(null);

    function modificarParrafo(){
        //setTexto("texto modificado");
        setTexto(valorinput);
    }

    function capturaDatos(e){
        //e.target.value -> captura cada una de los caracteres ingresados
        console.log(e.target.value);
        //setTexto(e.target.value);
        setValorinput(e.target.value);
    }

    return(
        <>
            <p>parafo 1 {texto} </p>
            <input type="text" className="form-control"  onChange={capturaDatos}></input>
            <button className="btn btn-success" onClick={modificarParrafo} >Modificar</button>
        </>
    );
}
export default Ejemplo2;