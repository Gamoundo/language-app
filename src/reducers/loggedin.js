// a function to change the user info, determine what is shown, 
// this will be attached to the onsubmits
const loggedReducer = (state = false, action) => {
    switch(action.type) {
        case 'SIGN_IN':
            return !state;
        default:
            return state

    }
}

export default loggedReducer;
