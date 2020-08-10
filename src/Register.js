import React from 'react';

import ReactPlayer from 'react-player';

class Register extends React.Component {
  
    state = {
        name: "",
        passwword: ""
    }
    
    handleChange = (event) => {
        this.setState({[event.target.name]: event.target.value});
      }
    
    
    
    handleSubmit = (event)  => {
        event.preventDefault();
        
        this.props.changeUser(this.state.name, this.state.password)
   console.log(this.state)
       this.props.history.push(`/home`);
       
    
    }
    
    
  
    render() {
        
        return (
      <div>
      <form className="regform" onSubmit={this.handleSubmit}>
        <h1>Register</h1>
        <div>
          <input type="text" name="name" value={this.state.name} onChange={this.handleChange} placeholder="Username" />
          <label htmlFor="name">Name</label>
        </div>
        <div>
          <input type="password" name="password" value={this.state.password} onChange={this.handleChange} placeholder="Password" />
          <label htmlFor="password">Password</label>
        </div>
        <input type="submit" value="Register" />
      </form>
            <ReactPlayer 
            url = "https://www.youtube.com/watch?v=IBGYRtVqVSM"
            />
      </div>
    );
  }
}

export default Register;