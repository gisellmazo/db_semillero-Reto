const {Router} = require('express');

const { connection_mysql } = require('../config/db');

const router = Router();


//Tabla tipo_linea
router.get('/tabla-tipo_linea', (req, res)=>{
    connection_mysql.query(
        `SELECT * FROM tipo_linea`, (error, resulset, fields)=>{
        if(error){
        console.log(error)
        return res.status(500).send('Error en base de datos')
       }else{
        return res.json(resulset)
        }
        }
    )
});

module.exports = router;