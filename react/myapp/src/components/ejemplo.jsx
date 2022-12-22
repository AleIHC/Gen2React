import React,{Component} from "react";

class Ejemplo extends Component{
    //onClick(), onBlur() y onChange() -> eventos sinteticos
    // STATE
    constructor(props){
        super(props);
        this.state ={
            encendido:"off"
        }
    }

    cambiarEstado = ()=>{
        //realizar el cambio con set
        //alert("click en boton 2");
        if(this.state.encendido==="on"){
            this.setState({ 
                encendido: "off"
            });
        }else{
            this.setState({ 
                encendido: "on"
            });
        }
        
    }

    render(){
        return(
            <>
                <p>Estado de la luz: {this.state.encendido} </p>
                <button onClick={()=> alert("Hola mundo") } type="button" className="btn btn-success" >Click Me</button>
                <button onClick={ this.cambiarEstado} type="button" className="btn btn-success" >Click Me 2</button>
            </>
        );
    }
}
export default Ejemplo;