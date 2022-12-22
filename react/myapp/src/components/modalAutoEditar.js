import React, { useState } from "react";
import { Button } from "react-bootstrap";
import { Modal } from "react-bootstrap";

const autoInicialEditar = [
    {
        id: '',
        marca: "",
        color: "",
        usuarios: {}
    }
]

function ModalEditarComponent({autoEditar}) {

    //Para mostrar y cerrar el modal
    const [show, setShow] = useState(false);
    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);

    const [autoEditado, setAutoEditado] = useState(autoInicialEditar);
    const {marca, color} = autoEditado;

    const handleSubmit = (e) => {
        e.preventDefault();//Esto es para evitar que la pagina se actualize al presionar el button
        autoEditar(autoEditado);
      }
}