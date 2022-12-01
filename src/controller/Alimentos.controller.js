import Conexion from '../db/db.js';
const conexion = new Conexion(); 
const Pool = conexion.get_pool();

const getAllAlimentos = async (req, res, next) => {  
    try {
        const result = await Pool.query("SELECT * FROM alimentos");   
        res.json(result.rows);  
    } catch (error) {
        next(error); 
    }
}
const getAlimentos = async (req, res, next) => { 
    try {
        const { idAlimentos } = req.params;
        const result = await Pool.query("SELECT * FROM alimentos WHERE idalimentos = $1", [ idAlimentos ]);    
        if(result.rows.length === 0)
            return res.status("404").json({ 
                message: "alimento no encontrado"
            }); 
            res.json(result.rows);   
    }catch(error){
        next(error); 
    }
}

const createAlimentos = async (req, res, next) => {  
    try { 
        const { descripcion, precio, id_usuario} = req.body; 
        const result = await Pool.query(
                `INSERT INTO 
                    alimentos( descripcion, precio, usuario_idusuario) 
                VALUES 
                    ('${descripcion}', '${precio}', ${id_usuario});`
        );
        res.json(result.rowCount); 
    } catch (error) {
        next(error); 
    }
}

const deleteAlimentos = async (req, res, next) => {
    try {
        const { idAlimentos } = req.params;
        const result = await Pool.query("DELETE FROM alimentos WHERE idalimentos = $1", [ idAlimentos ]);    
        if(result.rowCount === 0)
            return res.status(404).json({
                message : "alimentos no encontrado"
            })
        return res.sendStatus(204); 

    }catch(error){
        next(error); 
    }
    
}

const UpdateAlimentos = async (req, res, next) => {
    try {
        const { idAlimentos } = req.params; 
        const { descripcion, precio, id_usuario } = req.body; 
        const result = await Pool.query(
            "UPDATE alimentos SET descripcion = $1, precio = $2, usuario_idusuario = $3 WHERE idalimentos = $4", 
            [ descripcion, precio, id_usuario, idAlimentos ]
        ); 
        if(result.rowCount === 0)
            return res.status(404).json({
                message : "alimento no encontrado"
            })
        return res.sendStatus(204); 
    } catch (error) {
        next(error);    
    }
}
export { getAllAlimentos, getAlimentos, createAlimentos, deleteAlimentos, UpdateAlimentos }; 