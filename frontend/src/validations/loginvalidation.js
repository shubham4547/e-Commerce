const loginValidation = (values) => {
    let errors = {};
  
    if (!values.userid) {
      errors.userid = "User ID is required";
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(values.userid)) {
      errors.userid = "Invalid email address";
    }
  
    if (!values.pwd) {
      errors.pwd = "Password is required";
    } 
  
    return errors;
  };
  
  export default loginValidation;
  