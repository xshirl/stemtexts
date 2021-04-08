require('dotenv').config();

const express = require('express');
const logger  = require('morgan');

const apiRouter = require('./routes/api');
const authController = require('./controllers/authController');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.use(authController.receiveToken);
app.use(express.static('../frontend/build'));
app.use('/api', apiRouter);

app.listen(PORT, () => {
    console.log(`Server is listening on port ${PORT}`)
})