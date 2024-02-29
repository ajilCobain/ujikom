const express = require('express')
const auth = require('./authRoute')
const user = require('./userRoute')
const kategori = require('./kategoriRoute');
const produk = require('./produkRoute');
const app = require('..')
const router = express.Router()



router.get(`/api/v1/`, (_req, res) => {
    res.json({
        "message": "Hello World"
    })
})

router.use(auth)
router.use(user)
router.use(kategori),
router.use(produk),

module.exports = router;