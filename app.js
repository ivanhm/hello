// https://github.com/uber/express-statsd
const express = require('express');
const app = express();
const router = express.Router()

app.use(router);

app.get('/', (req, res) => {
  res.send('hello world ivan Updated!!')
})

app.get('/booyah', (req, res) => {
  res.send('booyah 2!')
})


app.listen(3000, function() {
  console.log('listening on 3000')
})

