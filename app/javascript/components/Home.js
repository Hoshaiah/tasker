import React from "react"
// import {BrowserRouter as Router, Router} from 'react-router-dom'
function Home(props) {
    // const {email, tasks_today, categories} = props

    function handleOnChange(e) {
        let checked = e.target.checked
        if (checked) {
         }
    }
    return (
        <div className="w-full h-full">
            <nav className="w-full h-16 bg-gray-900">
                <h1 className="text-blue-100 text-bolder text-4xl pt-3 pl-8">Tasker</h1>
            </nav>

            <div className="w-full h-full flex">
                <div id="burger-nav" className="w-96 h-full bg-white flex flex-col">
                    <div className="flex p-4 items-center">
                        <div className="w-10 h-10 rounded-full bg-red-400 flex justify-center items-center">
                            {/* <h1 className="text-white">{email[0].toUpperCase()}</h1> */}
                        </div>
                        {/* <h2 className="pl-3">{email}</h2> */}
                    </div>
                    <div className="w-full h-10 flex p-8 pt-4 items-center">
                        <h1 className="text-md">Home</h1>
                    </div>
                    <div className="w-full h-10 flex p-8 pt-4 items-center">
                        <h1 className="text-md">Categories</h1>
                    </div>
                    <div className="w-full h-10 flex p-8 pt-4 items-center">
                        <h1 className="text-md">View All</h1>
                    </div>
                    <div className="w-full h-10 flex p-8 pt-4 items-center">
                        <h1 className="text-md">Log Out</h1>
                    </div>   
                </div>

                <div id="main" className="w-full h-full bg-gray-500 flex">
                    <div id="main-content" className="w-10/12 h-5\/6 bg-white ml-8 mt-8 mb-8 rounded-md">
                        <h1 className="text-xl m-10 font-bold">Today</h1>
                        {/* {tasks_today.map((task, index) =>
                        <div> 
                            <input type="checkbox" onChange={(e) => {handleOnChange(e)}}></input>
                            <label key={index}>{task.title}</label>
                            <h2>{categories.find(x=>x.id === task.category_id).title}</h2>
                        </div>
                        )} */}
                    </div>
                </div>
            </div>
        </div>
    )
}


export default Home