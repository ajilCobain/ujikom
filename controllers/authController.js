const model = require("../database/models/");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
require("dotenv").config();

function login(req, res) {
    const email = req.body.email;
    const password = req.body.password;

    model.user.findOne({
        where: {
            email: email,
        },
    }).then(function (result) {
        let passwordHash = result.password;
        let checkPassword = bcrypt.compareSync(password, passwordHash);

        if (checkPassword) {
            res.json({
                message: "Berhasil Login",
                token: jwt.sign({ id: result.id }, process.env.JWT_KEY_SECRET, {
                    expiresIn: '1h'
                }),
            });
        } else {
            res.json({
                message: "Gagal Login",
            });
        }
    }).catch(function (error) {
        res.json({ error: error });
    })
}

module.exports = {
    login
}