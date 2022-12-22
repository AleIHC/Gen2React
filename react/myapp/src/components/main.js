import React,{Component} from 'react';
import Element from './element';
import Advertisement from './advertisement';

class Main extends Component{
    render(){
        return(
            <div>
                <Element/>
                <Element/>
                <Element/>
                <Advertisement/>
            </div>
        );
    }
}

export default Main;