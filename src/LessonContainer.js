import React from 'react';
import Lesson from "./Lesson"
import Game from './Game';





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

    // renderGame = () => {
        
    //     return (this.state.lessons.map((lesson) => {
          
    //       console.log(lesson)
    //       return(
              
    //           <Game
    //               key={lesson.id}
    //               name={lesson.name}
    //               translation={lesson.translation}
    //               img={lesson.img} 
    //               />
    //       )
    //      }))
    //   }



    
    render() {
      

        
       

        
    

        console.log(this.state.lessons)
        
        return(
            <div>
                
                <div className="lessonsWrapper">
                
                <h2>{this.props.name}</h2>
                <button onClick={this.handleShow}> learn</button>
                <Game tiles={this.state.lessons}/>
                
            </div>
            
            </div>
            
        )
    }

}

export default LessonContainer;