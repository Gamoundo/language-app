import React from 'react';

import './App.css';


import Register from './Register'
import Login from './Login'
import Navbar from './Navbar'
import { Route } from "react-router-dom"
import DisplayUserCourse from './DisplayUserCourses';
import ContentEditable from 'react-contenteditable'
import UserCourse from "./UserCourses"


class Home extends React.Component {
    
    
    contentEditable= React.createRef()
 state = {
  username: this.props.user.username,
  password: this.props.password,
  usercourse: []
}

handleClick = (e) => {
    e.preventDefault();
    window.localStorage.clear();
    this.props.changeUser("", this.state.password)
    this.props.history.push('/')
    
}  


handleChange = (event) => {
    this.setState({ [event.target.name]: event.target.value });
}



handleSubmit = (event) => {
    event.preventDefault();
  let  user= window.localStorage.getItem("TheLinguist");
  let  user_id = JSON.parse(user).user_id 
 let obj = {
    username: this.state.username,
    password: this.state.password
}
  





fetch(`http://localhost:3000/${user_id}`, {
        method: 'PATCH',
            
        body: JSON.stringify(obj),
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
                this.props.changeName(this.state.username)
                this.props.history.push(`/home`);
            } 
        })



}

// deletecourse (ucourse) {
//  const newcourses = this.state.usercourse.filter((course) => {
//       return course != ucourse
//   });
//   this.setState({ usercourse: newcourses})
// }

setCourses = (newcourse) => {
    this.setState({usercourse: newcourse})
} 

removeCourse = id => {
    const updatedcourses = this.state.usercourse.filter(course => {
      if (course.id !== id) {
        return true
      } else {
        return false
      }
    })

    this.setState({
      usercourse: updatedcourses
    })
  }

  addNewCourse = newCourse => {
    this.setState(prevState => ({
      usercourse: [...prevState.usercourse, newCourse]
    }))
  }

rendercourses () {
    // console.log(this.props.id)
  return (this.state.usercourse.map((course) => {
    // let callback = () => this.deletecourse(course)
    console.log(course)
    return(
        
        <DisplayUserCourse
        key={course.id}
        name={course.name}
        // click={callback}
        id= {course.id}
        user={this.state}
        setCourses={this.setCourses}
        removeCourse={this.removeCourse}
        />
    )
   }))
}

renderUserCourses () {
    // console.log(this.props.id)
  return (this.state.usercourse.map((course) => {
    // let callback = () => this.deletecourse(course)
    console.log(course)
    return(
        
        <UserCourse
        key={course.id}
        name={course.name}
        // click={callback}
        id= {course.id}
        
        />
    )
   }))
}

// renderUserCourses()
componentDidMount() {
    let user= window.localStorage.getItem("TheLinguist");
 let  token = JSON.parse(user).userToken;
 let  user_id = JSON.parse(user).user_id 
 
     fetch(`http://localhost:3000/user_courses/${user_id}`, {
         method: 'GET',
         
     headers: {
         "Content-Type": "application/json",
         Authorization: token,
         Accept: "application/json"
     }
   })
     .then(r => r.json())
     .then(usercourse => this.setState({usercourse}));
 }
render() {
    console.log(this.props.user)
    console.log(this.state.usercourse)
  return (
    <div className="App">
     
     
      
      <form className="invisform" onSubmit={this.handleSubmit}>
                  
                    <div>
                        <input type="submit" className="invisform" type='text' name="username" placeholder={this.state.username} value={this.state.username} onChange={this.handleChange} />
                        
                    </div>
        </form>
      

  <div>
  {this.state.usercourse.length > 0 && this.rendercourses()}
  </div>
  <button onClick={this.handleClick}>Logout</button>
      
    </div>
    
      
    
  );
 }
}

export default Home;