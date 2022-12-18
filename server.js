const express = require('express')
const app = new express();

const user = {
    firstName: 'DevOps',
    lastName: 'Engineer'
}

app.get("/user", (req,res)=>{
    res.send(user);
    res.end();
})

app.listen(4000, ()=>{
    console.log("APP IS RUNNING ON 3000")
})