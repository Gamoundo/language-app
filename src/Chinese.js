import React from 'react';

class Chinese extends React.Component {

    render() {
        return (
            <div className="userc">
                <div>
                <h1>{this.props.user.username} 
现在我们学习中文  </h1>
                <div>
                <h3>Food</h3>
                <button> learn</button>
                </div>
                 
                <div>
                <h3>Occupation</h3>
                <button> learn</button>  
                </div>
                </div>
                
                
                
            </div>
        )
    }
}

export default Chinese;