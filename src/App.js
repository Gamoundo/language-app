import React from 'react';

import './App.css';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import Register from "./Register"
import Login from './Login'
import Navbar from './Navbar'
import Home from './Home'
import Courses from './Courses'
import Russian from './Russian'
import Chinese from './Chinese'



const user= window.localStorage.getItem("TheLinguist");
const  user_id = JSON.parse(user).user_id 
  const  name= JSON.parse(user).username

class App extends React.Component {
  
  
    
  state = {
    
      username: name,
      password: ""
   
  }

  
  ChangeUser = (newName, newPassword) => {
   this.setState({
      username: newName,
      password: newPassword
    })
   
  }
  
  render (){
   
  return (
    <Router>
      
      <div className="App">
        <h1>The linguist</h1>
        <img src ="https://honeysanime.com/wp-content/uploads/2017/10/Sakamoto-desu-ga-crunchyroll-500x281.jpg" />
      <Navbar user={this.state}/>
      <Route exact path ="/login" render={ routerProps => <Login {...routerProps} changeUser ={this.ChangeUser} user={this.state}/>}> 
      </Route>
      <Route exact path ="/register" render={ routerProps => <Register {...routerProps} changeUser ={this.ChangeUser} user={this.state}/>}>  
      </Route>
      <Route exact path ="/home" render={ routerProps => <Home {...routerProps} changeUser ={this.ChangeUser} user={this.state}/>}> 
      </Route>
      <Route exact path ="/courses" render={ routerProps => <Courses {...routerProps} user={this.state}/>}> 
      </Route>
      <Route exact path ="/russian" render={ routerProps => <Russian {...routerProps} user={this.state}/>}> 
      </Route>
      <Route exact path ="/chinese" render={ routerProps => <Chinese {...routerProps} user={this.state}/>}> 
      </Route>
     </div>
    </Router>
    
  );
  }
}

export default App;
