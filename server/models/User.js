const db = require('../config/db');

const User = {
    create: (data, callback) => {
        const query = 'INSERT INTO users (first_name, last_name, email, password, role) VALUES (?, ?, ?, ?, ?)';
        db.query(query, data, callback);
    },
    findByEmail: (email, callback) => {
        db.query('SELECT * FROM users WHERE email = ?', [email], callback);
    },
    findAll: (callback) => {
        db.query('SELECT first_name, last_name, email, role FROM users', callback);
    }
};
module.exports = User;
