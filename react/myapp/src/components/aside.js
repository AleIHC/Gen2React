import React,{Component} from 'react';
import Button from 'react-bootstrap/Button';

class Aside extends Component{
    render(){
        return(
            <div>
                <p className='alert alert-primary'>esto es un parrafo alert en aside</p>
                <div className="mb-3">
                    <label htmlFor="exampleFormControlInput1" className="form-label">Email address</label>
                    <input type="email" className="form-control" id="exampleFormControlInput1" placeholder="name@example.com"/>
                </div>
                <div className="mb-3">
                    <label htmlFor="exampleFormControlTextarea1" className="form-label">Example textarea</label>
                    <textarea className="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <button type="button" className="btn btn-primary" onClick={ ()=> alert("This button has been clicked!") }>Primary</button>
                <Button variant="primary">Primary</Button>{' '}
                <Button variant="primary" onClick={ ()=> alert("This button has been clicked!") }>Click Me</Button>{' '}
                
            </div>
        );
    }
}

export default Aside;