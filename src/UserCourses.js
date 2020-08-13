import React from 'react';
import { NavLink } from 'react-router-dom';
class UserCourse extends React.Component {

    render() {
        return (
            <div className="userc">
                <div>
                <NavLink
          to="/russian"
          exact
          
          activeStyle={{
            background: 'orange'
          }}
        >Russian</NavLink>
                <button> delete</button> 
                <div>
                <NavLink
          to="/chinese"
          exact
          
          activeStyle={{
            background: 'orange'
          }}
        >Chinese</NavLink>
                <button> delete</button>  
                </div>
                </div>
                
                
                
            </div>
        )
    }
}

export default UserCourse;