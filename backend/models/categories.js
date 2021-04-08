const db = require('../config/connection');

function getAllCategories() {
  return db.any(`
    SELECT * FROM categories;
  `);
}

function getCategory(id) {
    return db.one(
        `SELECT * FROM categories
        WHERE id = $1`, id
    );
}

function getTextsFromCategory(id) {
    return db.any(`
    SELECT * FROM products
    WHERE products.category_id = $1`, id);
}

module.exports = {
  getAllCategories,
  getCategory,
  getTextsFromCategory
}

