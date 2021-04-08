const tokenService = require('../services/token');
const authDb = require('../models/auth');

function register(req, res) {
  authDb.register(req.body)
  .then(data => tokenService.makeToken({
    id: data.id,
    username: data.username,
    email: data.email,
  }))
  .then(token => {
    res.json({
      token
    })
  })
  .catch(err => res.json({
    message: 'err.message'
  }));
}

function login(req, res) {
  authDb.login(req.body)
  .then(data => tokenService.makeToken({
    id: data.id,
    username: data.username,
    email: data.email
  }))
  .then(token => {
    res.json({
      token
    })
  })
  .catch(err => res.json({
    status: 'Error',
    message: 'Email and/or password is incorrect'
  }))
}

function receiveToken(req, res, next) {
  if(req.headers.authorization) {
    req.authToken = req.headers.authorization.replace(/^Bearer\s/, '');
  }
  next();
}

function restrict(req, res, next) {
  tokenService.verify(req.authToken)
  .then(data => {
    res.locals.user = data;
    next();
  })
  .catch(err => res.status(401).json({
    status: 'Error',
    message: 'Invalid email or password'
  }))
}

function updateUser(req, res, next) {
  authDb.updateUser(req.body)
  .then(data => tokenService.makeToken({
    id: data.id,
    username: data.username,
    email: data.email
  }))
  .then(token => {
    res.json({
      token
    })
  })
  .catch(err => res.status(401).json({
    status: 'Error',
    message: 'Username and email wer\'e not updated'
  }))
}

module.exports = {
  register,
  login,
  receiveToken,
  restrict,
  updateUser
}