import React, { useState } from 'react'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import { Container } from '@mui/material'

import './App.css'

import Dashboard from './components/Dashboard/Dashboard'
import Preference from './components/Preference'
import Navbar from './components/Navbar/Navbar'
import ToggleForm from './components/ToggleForm/ToggleForm'
import Anime from './components/Anime'
import Manga from './components/Manga'
import Genre from './components/Genre/Genre'
import AnimeInfo from './components/AnimeInfo/AnimeInfo'
import MangaInfo from './components/MangaInfo/MangaInfo'
import Plan from './components/Plan/Plan'
import Show from './components/Blog/Show'
import Write from './components/Blog/Write'
import IndividualBlog from './components/Blog/IndividualBlog'
import TestComponent from './components/TestComponent'
import Premium from './components/Premium/Premium'

import useToken from './hooks/useToken'

function setToken(userToken) {
  sessionStorage.setItem('token', JSON.stringify(userToken))
}

function getToken() {
  const tokenString = sessionStorage.getItem('token')
  const userToken = JSON.parse(tokenString);
  return userToken?.token
}

function App() {
  const { token, setToken } = useToken()

  function refreshToken(){
    setToken('')
  }

  // if(!token) {
  //   // return <Login setToken={setToken} />
  //   return <ToggleForm setToken={setToken} />
  // }

  return (
    <div className="wrapper">
      <Router>
        <Navbar token={token} logOutFunction={refreshToken} />
        <Container>
          <br/>
          <Routes>
            <Route path="/" exact element={<Preference />} />
            <Route path="/dashboard" element={<Dashboard token={token} />} />
            <Route path="/authentication" element={<ToggleForm setToken={setToken} />} />
            <Route path="/plan" element={<Plan token={token} />} />
            <Route path="/anime/:animeId" exact element={<AnimeInfo token={token} base="anime" />} />
            <Route path="/anime/:animeId/:animeName/:episode" exact element={<Anime base="anime" />} />
            <Route path="/manga/:mangaId" element={<MangaInfo token={token} base="manga" />} />
            <Route path="/manga/:mangaId/:mangaName/:chapter" element={<Manga base="manga" />} />
            <Route path="/genres" element={<Genre />} />
            <Route path="/blogs" element={<Show />} />
            <Route path="/write" element={<Write token={token} />} />
            <Route path="/blogs/:blogId" element={<IndividualBlog token={token} />} />
            <Route path="/premium" element={<Premium token={token} />} />

            <Route path="/panime/:animeId" exact element={<AnimeInfo token={token} base="panime" />} />
            <Route path="/panime/:animeId/:animeName/:episode" exact element={<Anime base="panime" />} />
            <Route path="/pmanga/:mangaId" element={<MangaInfo token={token} base="pmanga" />} />
            <Route path="/pmanga/:mangaId/:mangaName/:chapter" element={<Manga base="pmanga" />} />

            <Route path="/test/:planid/:planrange" element={<TestComponent />} />
          </Routes>
        </Container>
      </Router>
    </div>
  );
}

export default App