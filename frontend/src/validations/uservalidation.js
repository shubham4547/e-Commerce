const userValidation = (values) => {
    let errors = {};
  
    if (!values.name) {
      errors.name = "Name is required";
    }
  
    if (!values.city) {
      errors.city = "City is required";
    }
  
    if (!values.userid) {
      errors.userid = "Email ID is required";
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(values.userid)) {
      errors.userid = "Invalid email address";
    }
  
    if (!values.phone) {
      errors.phone = "Phone number is required";
    } else if (!/^\d{10}$/.test(values.phone)) {
      errors.phone = "Invalid phone number. Please enter a 10-digit number";
    }
  
    if (!values.pwd) {
      errors.pwd = "Password is required";
    } else if (values.pwd.length < 8) {
      errors.pwd = "Password must be at least 8 characters long";
    }
  
    if (!values.cpwd) {
      errors.cpwd = "Confirm password is required";
    } else if (values.pwd && values.cpwd && values.pwd !== values.cpwd) {
      errors.cpwd = "Passwords do not match";
    }
  
    return errors;
  };
  
  export default userValidation;
  