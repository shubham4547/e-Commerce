import axios from "axios";
import { useEffect } from "react";
import { useState } from "react";

function Categories(){
    const [cats,setcats]=useState([])
    const [catname,setcatname]=useState()
    const updateCategory=cat=>{
        axios.put('http://localhost:5000/api/categories/'+cat.id,{isactive:!cat.isactive})
        .then(resp=>{
            alert(resp.data.data)
            loaddata()
        })
        .catch(err=>alert(err.error))
    }

    const handleSubmit=e=>{
        e.preventDefault()
        if(catname===undefined){
            alert('Please provide full information')
            return
        }
        axios.post('http://localhost:5000/api/categories',{catname:catname})
        .then(resp=>{
            setcatname('')
            alert(resp.data.data)
            loaddata()
        })
        .catch(error=>{
            alert(error.error)
        })
    }

    const loaddata=()=>{
        axios.get('http://localhost:5000/api/categories') 
       .then(resp=>setcats(resp.data))
       .catch(error=>alert(error))
    }
    useEffect(()=>{
       loaddata()
    },[])
    return  (
        <div className="container-fluid text-black font-weight-bold">
            <h4 className="p-2">Categoeis</h4>
            <div className="row">
                <div className="col-sm-8">
                    <table className="table table-bordered table-striped table-light table-hover">
                        <thead className="table-dark">
                            <tr>
                                <th>Id</th>
                                <th>Name</th>                                                                
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        {cats.filter(x=>x.isactive).map(x=>(
                            <tr key={x.id}>
                                <td>{x.id}</td>
                                <td>{x.catname}</td>                                                           
                                <td><button onClick={(e)=>updateCategory(x)} className="btn btn-danger btn-sm">Delete</button></td>
                            </tr>
                        ))}
                        </tbody>
                    </table>
                </div>
                <div className="col-sm-4">
                    <h4>Add/Edit Category</h4>
                    <form>
                    <div className="form-group">
                        <label>Category Name</label>
                        <input type="text" onChange={e=>setcatname(e.target.value)} value={catname} className="form-control" required/>
                    </div>                   
                    <button onClick={handleSubmit} className="btn btn-primary float-right">Save</button>
                    </form>
                </div>
            </div>
        </div>
    )
}

export default Categories;