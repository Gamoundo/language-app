import React from "react"




class Course extends React.Component {
    
  addUserCourse = (e) =>  {
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
        user_id: user_id,
        course_id: this.props.id
        
    }
    console.log("create course", obj)
    
    fetch('http://localhost:3000/user_courses', {
        method: 'POST',
        body: JSON.stringify(obj),
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        }
    })
    .then(r => r.json())
    .then(console.log) 
    
} 

  render() {
    return (
        
      <div  >
      <h4><b> {this.props.name}</b></h4> 
      <button onClick={this.addUserCourse} className='button'>Add</button>
   

    </div>
    );
  }
  };

  export default Course;