import React from 'react';
import Course from './course'

class Courses extends React.Component {

    state = {
        courses: [],
        course: " "
    }
    
    displayCourse = (text) => {
    
        this.setState({
          course: text
          
        })
      }
    

      rendercourses () {
        // console.log(this.props.id)
      return (this.state.courses.map((course) => {
        // let callback = () => this.displaycourse(course)
        return(
            
            <Course 
            key={course.id}
            id={course.id}
            name={course.name}
            // click={callback}
            owned={false}
            />
        )
       }))
    }

    
    componentDidMount() {
       let user= window.localStorage.getItem("TheLinguist");
    let  token = JSON.parse(user).userToken;

        fetch("http://localhost:3000/courses", {
            method: 'GET',
        headers: {
            "Content-Type": "application/json",
            Authorization: token,
            Accept: "application/json"
        }
      })
        .then(r => r.json())
        .then(courses => this.setState({courses}));
    }
    render() {
        console.log(this.state.courses) 
        console.log(this.props)
        return (
            <div className="userc">
                
        
                
                <div>
                
                <div>{this.props.user && this.props.user.username}, Ready to learn?</div>
                <div>{this.state.courses.length > 0 && this.rendercourses()}</div>
                </div>
                
                
                
            </div>
        )
    }
}

export default Courses;