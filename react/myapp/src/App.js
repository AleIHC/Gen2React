import Header from './components/header';
import AutoComponent from './components/auto';
import './App.css';


function App() {
    return (
        <div className="App">
            <Header nombre="Mis" apellido="Autos" />
            <AutoComponent />
        </div>
    );
}

export default App;
