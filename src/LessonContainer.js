import React from 'react';
import Lesson from "./Lesson"





class LessonContainer extends React.Component {
 
 state = {
     lessons: this.props.lessons.filter( lesson => {
        return lesson.category === this.props.name
    }),
    show: false
 }
    
 handleShow = (e) => {
    e.preventDefault();
    this.setState({ show: !this.state.show})
}
    renderLessons = () => {
        
      return (this.state.lessons.map((lesson) => {
        
        console.log(lesson)
        return(
            
            <Lesson
                key={lesson.id}
                name={lesson.name}
                translation={lesson.translation}
                img={lesson.img} 
                />
        )
       }))
    }
    
    render() {
      

        
       

        
    

        console.log(this.state.lessons)
        
        return(
            <div>
                <h2>{this.props.name}</h2>
                <button onClick={this.handleShow}> learn</button>
                { this.state.show && this.renderLessons()}
            </div>
        )
    }

}

export default LessonContainer;