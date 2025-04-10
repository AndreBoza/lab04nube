const express = require('express');
const app = express();
const port = 9000;

const clientesRoute = require('./routes/clientes');
const productosRoute = require('./routes/productos');

app.use('/clientes', clientesRoute);
app.use('/productos', productosRoute);

app.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}`);
});

