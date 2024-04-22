const router = require("express").Router();
const authController = require("../controllers/authController");
// const auth = require("../middlewares/auth.js");

router.post("/api/v1/login", authController.login);

module.exports = router;
