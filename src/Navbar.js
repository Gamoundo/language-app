import React from 'react'
import { NavLink } from 'react-router-dom';

const link = {
  width: '100px',
  padding: '12px',
  margin: '0 6px 6px',
  background: 'red',
  textDecoration: 'none',
  color: 'white',
}
// write a ternary based on the state to determine what shows.

class Navbar extends React.Component {
  render() {
    return (
      <div>
        <NavLink
          to="/register"
          exact
          style={link}
          activeStyle={{
            background: 'orange'
          }}
        >Register</NavLink>
        <NavLink
          to="/login"
          exact
          style={link}
          activeStyle={{
            background: 'purple'
          }}
        >Login</NavLink>
        <NavLink
          to="/courses"
          exact
          style={link}
          activeStyle={{
            background: 'yellow'
          }}
        >Courses</NavLink>
      </div>
    )
  }
}

export default Navbar;