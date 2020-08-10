import React from 'react';

import './App.css';
import { BrowserRouter as Router, Route } from 'react-router-dom';
import Register from "./Register"
import Login from './Login'
import Navbar from './Navbar'
import Home from './Home'
import Courses from './Courses'
import Russian from './Russian'




class App extends React.Component {
  
  state = {
    
      name: 'Joey',
      password: "sup"
   
  }
  ChangeUser = (newName, newPassword) => {
   return ( this.setState({
      name: newName,
      password: newPassword
    })
   )
  }
  
  render (){
   
  return (
    <Router>
      
      <div className="App">
        <h1>The linguist</h1>
        <img src ="https://honeysanime.com/wp-content/uploads/2017/10/Sakamoto-desu-ga-crunchyroll-500x281.jpg" />
      <Navbar />
      <Route exact path ="/login" render={ routerProps => <Login {...routerProps} changeUser ={this.ChangeUser} user={this.state}/>}> 
      </Route>
      <Route exact path ="/register" render={ routerProps => <Register {...routerProps} changeUser ={this.ChangeUser} user={this.state}/>}>  
      </Route>
      <Route exact path ="/home" render={ routerProps => <Home {...routerProps} changeUser ={this.ChangeUser} user={this.state}/>}> 
      </Route>
      <Route exact path ="/courses" render={ routerProps => <Courses {...routerProps} user={this.state}/>}> 
      </Route>
      <Route exact path ="/russian" render={ routerProps => <Russian {...routerProps} user={this.state.user}/>}> 
      </Route>
     </div>
    </Router>
    
  );
  }
}

export default App;
