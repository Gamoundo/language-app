import React from 'react';

import './App.css';


import Register from './Register'
import Login from './Login'
import Navbar from './Navbar'
import { Route } from "react-router-dom"
import UserCourse from './UserCourses';
import ContentEditable from 'react-contenteditable'


class Home extends React.Component {
    
    
    contentEditable= React.createRef()
 state = {
  username: this.props.user.username,
  password: this.props.password,
  
}

handleChange = (event) => {
    this.setState({ [event.target.name]: event.target.value });
}

handleSubmit = (event) => {
    event.preventDefault();
  let  user= window.localStorage.getItem("TheLinguist");
  let  user_id = JSON.parse(user).user_id 
    fetch(`http://localhost:3000/${user_id}`, {
        method: 'PATCH',

        body: JSON.stringify(this.state),
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        }
    }).then(r => r.json())
        .then(user => {
            
            //    console.log(this.state)
            //console.log(user)
            if (!user.error) {
                const userInfo = {
                    userToken: user.token,
                    username: user.username,
                    user_id: user.id
                }
                window.localStorage.setItem("TheLinguist", JSON.stringify(userInfo));
                this.props.history.push(`/home`);
            } 
        })



}
// ChangeUser = (newName) => {
//   this.setState({
//     name: newName
    
//   })
// }

// Where I put routes once that bug is solved
render() {
    console.log(this.props.user)
  return (
    <div className="App">
     
     
      
      <form className="invisform" onSubmit={this.handleSubmit}>
                  
                    <div>
                        <input type="submit" className="invisform" type='text' name="username" placeholder={this.state.username} value={this.state.username} onChange={this.handleChange} />
                        
                    </div>
        </form>
      

  
  <UserCourse />
      
    </div>
    
      
    
  );
 }
}

export default Home;