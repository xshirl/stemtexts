const categoriesDb = require('../models/categories');

function getAllCategories(req, res, next) {
  categoriesDb.getAllCategories()
  .then(data => {
    res.locals.contents = data;
    next();
  })
  .catch(err => {
    next(err);
  })
}

function getOneCategory(req, res, next) {
    categoriesDb.getOneGenre(req.params.id)
    .then(data => {
      res.locals.contents = data;
      next();
    })
    .catch(err => {
      next(err);
    })
  }
  
  function getTextFromCategory(req, res, next) {
    categoriesDb.getTextFromGenre(req.params.id)
    .then(data => {
      res.locals.contents = data;
      next();
    })
    .catch(err => {
      next(err);
    })
  }

module.exports = {
  getAllCategories,
  getOneCategory,
  getTextFromCategory

}