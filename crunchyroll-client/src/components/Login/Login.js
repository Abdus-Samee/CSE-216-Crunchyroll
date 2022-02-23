import React, { useState } from 'react';

async function loginUser(credentials) {
    return fetch('http://localhost:9000/login', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(credentials)
    })
      .then(data => data.json())
}

export default function Login({ setToken }) {
  const [email, setEmail] = useState();
  const [password, setPassword] = useState();
  const [formErrors, setFormErrors] = useState({});

  const handleSubmit = async e => {
    e.preventDefault();
    setFormErrors(validate());
    if(Object.keys(formErrors).length === 0){
      const token = await loginUser({
        email,
        password
      });
      //set an alert if the token is not valid or is empty i.e. user credentials are wrong
      setToken(token);
    }else{
      console.log(formErrors)
      console.log("Error  submitting form...")
    }
  }

  const validate = () => {
    const errors = {}
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/i
    if(!email) errors.email = 'Email is required'
    if(!password) errors.password = 'Password is required'

    return errors
  }

  return(
    <div>
      <h1>Please Log In</h1>
      <form onSubmit={handleSubmit}>
        <label>
          <p>Email</p>
          <input type="email" onChange={e => setEmail(e.target.value)}/>
          <p style={{ color: 'red' }}>{formErrors.email}</p>
        </label>
        <label>
          <p>Password</p>
          <input type="password" onChange={e => setPassword(e.target.value)}/>
          <p style={{ color: 'red' }}>{formErrors.password}</p>
        </label>
        <div>
          <button type="submit">Submit</button>
        </div>
      </form>
    </div>
  )
}