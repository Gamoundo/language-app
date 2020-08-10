import React from 'react';

import './App.css';


import Register from './Register'
import Login from './Login'
import Navbar from './Navbar'
import { Route } from "react-router-dom"
import UserCourse from './UserCourses';


class Home extends React.Component {

 state = {
  name: this.props.name,
  password: this.props.password
}

 
// ChangeUser = (newName) => {
//   this.setState({
//     name: newName
    
//   })
// }

// Where I put routes once that bug is solved
render() {
    console.log(this.state)
  return (
    <div className="App">
     
      {/* WHen either of these buttons are used you set state of the user */}
      
      
    <div>
      
      
  <h1>{this.props.user.name}</h1>
  <UserCourse />
      
    </div>
    
      {/* User having these props will render their user pages */}
    </div>
  );
 }
}

export default Home;