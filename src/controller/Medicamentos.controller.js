import Conexion from '../db/db.js';
const conexion = new Conexion(); 
const Pool = conexion.get_pool();

const getAllMedicamentos = async (req, res, next) => {  
    try {
        const result = await Pool.query("SELECT * FROM Medicamentos");   
        res.json(result.rows);  
    } catch (error) {
        next(error); 
    }
}
const getMedicamentos = async (req, res, next) => { 
    try {
        const { idMedicamentos } = req.params;
        const result = await Pool.query("SELECT * FROM Medicamentos WHERE idMedicamentos = $1", [ idMedicamentos ]);    
        if(result.rows.length === 0)
            return res.status("404").json({ 
                message: "medicamento no encontrado"
            }); 
            res.json(result.rows);   
    }catch(error){
        next(error); 
    }
}

const createMedicamentos = async (req, res, next) => {  
    try { 
        const { descripcion, precio, id_usuario} = req.body; 
        const result = await Pool.query(
                `INSERT INTO 
                    Medicamentos( descripcion, precio, usuario_idusuario) 
                VALUES 
                    ('${descripcion}', '${precio}', ${id_usuario});`
        );
        res.json(result.rowCount); 
    } catch (error) {
        next(error); 
    }
}

const deleteMedicamentos = async (req, res, next) => {
    try {
        const { idMedicamentos } = req.params;
        const result = await Pool.query("DELETE FROM Medicamentos WHERE idMedicamentos = $1", [ idMedicamentos ]);    
        if(result.rowCount === 0)
            return res.status(404).json({
                message : "Medicamentos no encontrado"
            })
        return res.sendStatus(204); 

    }catch(error){
        next(error); 
    }
    
}

const UpdateMedicamentos = async (req, res, next) => {
    try {
        const { idMedicamentos } = req.params; 
        const { descripcion, precio, id_usuario } = req.body; 
        const result = await Pool.query(
            "UPDATE Medicamentos SET descripcion = $1, precio = $2, usuario_idusuario = $3 WHERE idMedicamentos = $4", 
            [ descripcion, precio, id_usuario, idMedicamentos ]
        ); 
        if(result.rowCount === 0)
            return res.status(404).json({
                message : "medicamento no encontrado"
            })
        return res.sendStatus(204); 
    } catch (error) {
        next(error);    
    }
}
export { getAllMedicamentos, getMedicamentos, createMedicamentos, deleteMedicamentos, UpdateMedicamentos }; 