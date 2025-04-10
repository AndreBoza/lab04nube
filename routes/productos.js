const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
    res.send('Página de productos');
});

module.exports = router;
