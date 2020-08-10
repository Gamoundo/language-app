import React from 'react';

class Courses extends React.Component {

    render() {
        return (
            <div className="userc">
                
        
                
                <div>
                <button>Home</button>
                <div>{this.props.user.name}, Ready to learn?</div>
                 <div><h3>Russian</h3>
                <button> add</button> </div>   
                
                <div>
                <h3>Chinese</h3>
                <button> add</button>  
                </div>
                <div>
                <h3>Arabic</h3>
                <button> add</button>  
                </div>
                <div>
                <h3>Spanish</h3>
                <button> add</button>  
                </div>
                </div>
                
                
                
            </div>
        )
    }
}

export default Courses;