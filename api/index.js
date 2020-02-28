const express = require('express')
const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.json())

const router = express.Router()

router.get("/", (req, res) => {
  res.status(200)
  return res.send({ 
    message: 'API server', 
    status: 200
  })
})

app.use("/api/v1", router)

console.log(`Listening on port ${process.env.PORT}`)
app.listen(process.env.PORT)
