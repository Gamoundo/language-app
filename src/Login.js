import React from 'react';
import ReactPlayer from "react-player"



class Login extends React.Component {

    nameInput = React.createRef()
    passwordInput = React.createRef()
    
    // handleChange = (event) => {
    //     this.setState({[event.target.name]: event.target.value});
    //   }
    
    
    
    handleSubmit = (event)  => {
        event.preventDefault();
        
        this.props.changeUser(this.nameInput, this.passwordInput)
   console.log(this.state)
       this.props.history.push(`/home`);
       
    
    }
   

   
  render() {
      console.log(this.nameInput)
      console.log(this.passwordInput)
    return (
        <div>
      <form className="logform" onSubmit={this.handleSubmit}>
        <h1>Login</h1>
        <div>
          <input type="text" name="name" placeholder="Username" ref={this.nameInput}/>
          <label htmlFor="name">name</label>
        </div>
        <div>
          <input type="password" name="password"  placeholder="Password" ref={this.passwordInput}/>
          <label htmlFor="password">Password</label>
        </div>
        <input type="submit" value="Login" />
      </form>
        <ReactPlayer 
         url="https://www.youtube.com/watch?v=-CTiEcbVyVo"
        />
      </div>
    );
  }
}

export default Login;