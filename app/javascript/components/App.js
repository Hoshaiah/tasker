import React from "react";
import {BrowserRouter, Routes, Route } from 'react-router-dom'
import {Switch} from 'react-router-dom'
import Home from "./Home";
function App() {
    return (
    <BrowserRouter>
        <Routes>
            <Route path="/" element={<Home/>}/>
        </Routes>
    </BrowserRouter>
        // <Home></Home>
    )
}

export default App