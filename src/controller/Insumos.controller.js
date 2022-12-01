import Conexion from '../db/db.js';
const conexion = new Conexion(); 
const Pool = conexion.get_pool();

const getAllInsumos = async (req, res, next) => {  
    try {
        const result = await Pool.query("SELECT * FROM Insumos");   
        res.json(result.rows);  
    } catch (error) {
        next(error); 
    }
}
export { getAllInsumos }; 