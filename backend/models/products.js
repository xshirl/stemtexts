const db = require('../config/connection');

function getAllTexts() { //returns all textbooks data
    const query = db.manyOrNone(`
      SELECT * FROM products
      ORDER BY products.id
      `);
    return query;
  }

  function getOneText(id) { //return one book's data by id
    return db.one(`
      SELECT * FROM products 
      WHERE id = $1`, id);
    
  }

  module.exports = {
      getAllTexts,
      getOneText
  }