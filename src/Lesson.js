import React from 'react';

class Lesson extends React.Component {
    render() {
        return (
            <div>
               <h3>{this.props.name}</h3>
               <img style={{'height': "300px", "width": "248px"}} src={this.props.img} alt={this.props.name} /> 
        <h3>{this.props.translation}</h3>
            </div>
        )
    }
}


export default Lesson;