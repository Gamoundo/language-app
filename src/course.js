import React from "react"

const Course = (props) => {
    
    

  
    return (
        
      <div className="container" >
      <h4><b> {props.name}</b></h4> 
      <button onClick={null} className='button'>{props.owned ? "Delete" : "Add"}</button>
   

    </div>
    );
  };

  export default Course;