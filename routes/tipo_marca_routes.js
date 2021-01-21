const {Router} = require('express');

const { connection_mysql } = require('../config/db');

const router = Router();

//Tabla tipo_marca
router.get('/tabla-tipo_marca', (req, res)=>{
    connection_mysql.query(
        `SELECT * FROM tipo_marca`, (error, resulset, fields)=>{
        if(error){
        console.log(error)
        return res.status(500).send('Error en base de datos')
       }else{
        return res.json(resulset)
        }
        }
    )
})


module.exports = router;