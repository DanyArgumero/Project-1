import Conexion from '../db/db.js';
const conexion = new Conexion(); 
const Pool = conexion.get_pool();

const getAllUsers = async (req, res, next) => {  
    try {
        const result = await Pool.query("SELECT * FROM usuario");   
        res.json(result.rows);  
    } catch (error) {
        next(error); 
    }
}
const getUser = async (req, res, next) => { 
    try {
        const { idUser } = req.params;
        const result = await Pool.query("SELECT * FROM usuario WHERE idUsuario = $1", [ idUser ]);    
        if(result.rows.length === 0)
            return res.status("404").json({ 
                message: "Usuario no encontrado"
            }); 
            res.json(result.rows);   
    }catch(error){
        next(error); 
    }
}

const createUser = async (req, res, next) => {  
    try { 
        const { email, password, rol_idrol, nombre, telefono } = req.body; 
        const result = await Pool.query(
                `INSERT INTO 
                    usuario( email, password, rol_idrol, nombre, telefono) 
                VALUES 
                    ('${email}', '${password}', ${rol_idrol}, '${nombre}', '${telefono}');`
        );
        res.json(result.rowCount); 
    } catch (error) {
        next(error); 
    }
}

const deleteUser = async (req, res, next) => {
    try {
        const { idUser } = req.params;
        const result = await Pool.query("DELETE FROM usuario WHERE idUsuario = $1", [ idUser ]);    
        if(result.rowCount === 0)
            return res.status(404).json({
                message : "Usuario no encontrado"
            })
        return res.sendStatus(204); 

    }catch(error){
        next(error); 
    }
    
}

const UpdateUser = async (req, res, next) => {
    try {
        const { idUser } = req.params; 
        const { email, password, rol_idrol, nombre, telefono } = req.body; 
        const result = await Pool.query(
            "UPDATE usuario SET email = $1, password = $2, rol_idrol = $3, nombre = $4, telefono = $5 WHERE idusuario = $6", 
            [ email, password, rol_idrol, nombre, telefono, idUser ]
        ); 
        if(result.rowCount === 0)
            return res.status(404).json({
                message : "Usuario no encontrado"
            })
        return res.sendStatus(204); 
    } catch (error) {
        next(error);    
    }
}
export { getAllUsers, getUser, createUser, deleteUser, UpdateUser }; 