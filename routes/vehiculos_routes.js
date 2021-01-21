const {Router} = require('express');

const { connection_mysql } = require('../config/db');

const router = Router();

//Servicios mostrando cada tabla

//Mostrar registros de datos en tabla vehiculos
router.get('/tabla-vehiculos', (req, res)=>{
    connection_mysql.query(
        `SELECT * FROM vehiculos`, (error, resulset, fields)=>{
        if(error){
        console.log(error)
        return res.status(500).send('Error en base de datos')
       }else{
        return res.json(resulset)
        }
        }
    )
});
//Mostrar registros en campo modelo de tabla vehiculos
router.get('/modelo', async(req, res)=>{
    connection_mysql.query(
        `SELECT modelo FROM vehiculos`, (error, resulset, fields)=>{
        if(error){
        console.log(error)
        return res.status(500).send('Error en base de datos')
       }else{
        return res.json(resulset)
        }
        }
    )
    });


//Mostrar registros por rango de fechas en tabla vehiculos por campo fecha_ven_seguro
router.get('/fecha_seguro', async(req, res)=>{
    connection_mysql.query(
        `SELECT fecha_ven_seguro FROM vehiculos`, (error, resulset, fields)=>{
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