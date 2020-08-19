import React from 'react';
import { NavLink } from 'react-router-dom';
import Courses from './Courses';
import UserCourse from './UserCourses';
class DisplayUserCourse extends React.Component {

state = {
    show: false
}

handleShow = (e) => {
    e.preventDefault();
    this.setState({ show: !this.state.show})
}

handleDelete = (e) => {
    e.preventDefault();
    
    // let user= window.localStorage.getItem("TheLinguist");
    // let  token = JSON.parse(user).userToken;
    // let  user_id = JSON.parse(user).user_id; 

    // debugger
    console.log('prefetch')
    
    let user= window.localStorage.getItem("TheLinguist");
 let  token = JSON.parse(user).userToken;
 let  user_id = JSON.parse(user).user_id 
    
    
    let obj = {
        course_id: this.props.id,
        user_id: user_id
        
    }
    
    
    fetch('http://localhost:3000/user_courses', {
        method: 'DELETE',
        body: JSON.stringify(obj),
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        }
    })
    .then(console.log)
    this.props.removeCourse(this.props.id)
} 
 


    render() {
        
        return (
            <div className="userc">
                <div>
                
        <h3 onClick={this.handleShow}>{this.props.name}</h3>
                <button onClick={this.handleDelete}> delete</button> 
                </div>
                <UserCourse 
                    name={this.props.name}
                    id={this.props.id}
                    user={this.props.user}
                    show={this.state.show}
                    />
                
            </div>
        )
    }
}

export default DisplayUserCourse;