const productsDb = require('../models/products');


function getAllProducts(req, res, next) {
  productsDb.getAllTexts()
  .then(data => {
    res.locals.contents = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}



function getOneProduct(req, res, next) {
    productsDb.getOneText(req.params.id)
    .then(data => {
      res.locals.contents = data;
      next();
    })
    .catch(err => {
      next(err);
    })
  }

  module.exports = {
    getAllProducts,
    getOneProduct,
  }