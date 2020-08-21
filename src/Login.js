import React from 'react';
import ReactPlayer from "react-player"



class Login extends React.Component {
    state = {
        username: "",
        password: ""
    }

    handleChange = (event) => {
        this.setState({ [event.target.name]: event.target.value });
    }



    handleSubmit = (event) => {
        event.preventDefault();

        fetch("http://localhost:3000/login", {
            method: 'POST',

            body: JSON.stringify(this.state),
            headers: {
                "Content-Type": "application/json",
                Accept: "application/json"
            }
        }).then(r => r.json())
            .then(user => {
                this.props.changeUser(this.state.username, this.state.password)
                //    console.log(this.state)
                //console.log(user)
                if (!user.error) {
                    const userInfo = {
                        userToken: user.token,
                        username: user.user.username,
                        user_id: user.user.id,
                    }
                    window.localStorage.setItem("TheLinguist", JSON.stringify(userInfo));
                    this.props.history.push(`/home`);
                } else {
                    alert("Insufficient credentials")
                    this.props.changeUser("", this.state.password);
                    this.props.history.push(`/login`);
                }
            })



    }




    render() {
        console.log(this.state.username)
        console.log(this.state.password)
        return (
            <div className="App">
                <form  onSubmit={this.handleSubmit}>
                    <h1>Login</h1>
                    <div>
                        <input type="text" name="username" placeholder="Username" value={this.state.username} onChange={this.handleChange} placeholder="Username" />
                        <label htmlFor="name">name</label>
                    </div>
                    <div>
                        <input type="password" name="password" placeholder="Password" value={this.state.password} onChange={this.handleChange} placeholder="Password" />
                        <label htmlFor="password">Password</label>
                    </div>
                    <input type="submit" value="Login" />
                </form>
                <ReactPlayer
                    url="https://www.youtube.com/watch?v=-CTiEcbVyVo"
                />
            </div>
        );
    }
}

export default Login;