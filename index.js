const express = require('express');
const morgan = require('morgan');
const app = express();

const vehiculos_routes = require('./routes/vehiculos_routes');
const tipo_marca_routes = require('./routes/tipo_marca_routes');
const tipo_linea_routes = require('./routes/tipo_linea_routes');

require('dotenv').config();

app.use(morgan('dev'));

app.use(express.json());

app.use('/vehiculos', vehiculos_routes);
app.use('/tipo_marca', tipo_marca_routes);
app.use('/tipo_linea', tipo_linea_routes);

app.set('port', process.env.PORT || 5000);

app.listen(app.get('port'), ()=>{
    console.log(`Aplicacion corriendo en el puerto ${app.get('port')}||`)
})