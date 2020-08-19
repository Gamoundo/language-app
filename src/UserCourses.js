import React from 'react';
import LessonContainer from "./LessonContainer"

class UserCourse extends React.Component {

   state = {
       lessons: []
   }


   componentDidMount() {
    let user= window.localStorage.getItem("TheLinguist");
 let  token = JSON.parse(user).userToken;
 let  user_id = JSON.parse(user).user_id 
 
     fetch(`http://localhost:3000/lessons`, {
         method: 'GET',
         
     headers: {
         "Content-Type": "application/json",
         Authorization: token,
         Accept: "application/json"
     }
   })
     .then(r => r.json())

     .then(lessons =>  lessons.filter(lesson => {
         if (lesson.course_id === this.props.id)
         return lesson
     })  
     ).then (lessons => this.setState({lessons}));
 }

 renderLessonsContainer () {
    // console.log(this.props.id)
   const categories = [];
  (this.state.lessons.map((lesson) => {
    // let callback = () => this.deletecourse(course)
    if (categories.indexOf(lesson.category) == -1){
        categories.push(lesson.category)
    }
    
    
     
    
   }

   
   )
  )
   return (categories.map((category) => {
    return (
        <LessonContainer 
        key={category}
        name={category}
        lessons={this.state.lessons}
        />
    )
}
   
   )
   )
}




    render() {
        console.log(this.state.lessons)
        
        let greetings = {
            Russian: "давай учим русский",
            Chinese: "让我们学中文",
            Arabic: "لنتعلم العربية",
            Bosnian: "naučimo bosanski",
            German: "Lass uns Deutsch lernen"
        }
        
        console.log(this.props)
        if (this.props.show) {
            return (
                <div > 
                <h1>{this.props.user.username} {greetings[this.props.name]}</h1>
               <h2>{this.renderLessonsContainer()}</h2>
            </div>
            )

        } else {
            return (
                <div>
                    
                </div>
            )
        }
        
        
    }

} 

export default UserCourse;