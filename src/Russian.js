import React from 'react';

class Russian extends React.Component {

    render() {
        console.log(this.props.user)
        return (
            <div className="userc">
                <div>
                <h1>{this.props.user.username}  давай учить русский </h1>
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

export default Russian;