import { useSelector } from "react-redux";

function Header(){
    const state=useSelector((state)=>state);
    console.log("Header ",state.loggedin.Username)
    return (
        <div className="jumbotron p-3 mb-0 rounded-0 bg-muted text-black">
            <img src={'/atp-kart-high-resolution-logo-black-on-transparent-background.png'} style={{width:"150px",height:"50px"}} className="float-left"/>
            {state.loggedin.IsLoggedIn ?
            <>
            <h5 className="float-right">Welcome ! {state.loggedin.Username}</h5> </>:
            ''}
            <h1 className="text-center" >Welcome to ATP Kart</h1>
            <div className="clearfix"></div>
        </div>
    )
}

export default Header;