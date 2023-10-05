import axios from "axios";
import { useSelector } from "react-redux";
import { Link } from "react-router-dom";
import RoleNavbar from "./RoleNavbar";

const { Fragment, useState, useEffect } = require("react");

function NavBar(){
    const state=useSelector((state)=>state);
    const [cats,setcats]=useState([])
    console.log("LoggedIn ",state.loggedin)
    console.log("Cart ",state.cart) 
    useEffect(()=>{
        axios.get('http://localhost:5000/api/categories') 
        .then(resp=>setcats(resp.data))
        .catch(error=>alert(error))
    },[])

    return (
        <Fragment>
            <div className="clearfix"></div>
            <nav className="navbar navbar-expand-lg navbar-dark bg-dark position-sticky mb-0" style={{top:0,zIndex:"1000"}}>
            <Link className="navbar-brand" to="/">Shop</Link>
                <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul className="navbar-nav">
                    <li className="nav-item active">
                        <Link className="nav-link" to="/">Home</Link>
                    </li>
                    <li className="nav-item dropdown">
                        <Link className="nav-link dropdown-toggle" to="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Categories
                        </Link>
                        <div className="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            {cats.filter(x=>x.isactive).map(x=>(
                            <Link className="dropdown-item" to={'/cats/'+x.id}>{x.catname}</Link>
                            ))}
                        </div>
                    </li>
                    </ul>
                    <RoleNavbar isLoggedIn={state.loggedin.IsLoggedIn} />                    
                </div>
                </nav>
        </Fragment>
    )
}

export default NavBar;
