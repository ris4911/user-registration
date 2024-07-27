const User = require('../models/User');
const bcrypt = require('bcryptjs');

exports.registerCustomer = (req, res) => {
    const { firstName, lastName, email, password } = req.body;
    const hashedPassword = bcrypt.hashSync(password, 8);
    const userData = [firstName, lastName, email, hashedPassword, 'customer'];

    User.create(userData, (err) => {
        if (err) return res.status(500).send({ message: 'Error registering user.' });
        res.status(200).send({ message: 'User registered successfully.' });
    });
};

exports.registerAdmin = (req, res) => {
    const { firstName, lastName, email, password } = req.body;
    const hashedPassword = bcrypt.hashSync(password, 8);
    const userData = [firstName, lastName, email, hashedPassword, 'admin'];

    User.create(userData, (err) => {
        if (err) return res.status(500).send({ message: 'Error registering admin.' });
        res.status(200).send({ message: 'Admin registered successfully.' });
    });
};

exports.loginAdmin = (req, res) => {
    const { email, password } = req.body;
    User.findByEmail(email, (err, user) => {
        if (err || user.length === 0) return res.status(404).send({ message: 'User not found.' });
        if (user[0].role !== 'admin') return res.status(403).send({ message: 'You are not allowed to login from here.' });

        const passwordIsValid = bcrypt.compareSync(password, user[0].password);
        if (!passwordIsValid) return res.status(401).send({ token: null, message: 'Invalid password.' });

        res.status(200).send({ message: 'Admin logged in successfully.' });
    });
};
exports.getAllUsers = (req, res) => {
    User.findAll((err, users) => {
        if (err) return res.status(500).send({ message: 'Error retrieving users.' });
        res.status(200).send(users);
    });
};

