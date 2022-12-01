import pg from 'pg';  
const { Pool } = pg;
import config  from '../config/config.js';


class Conexion{ 
    
    #configpsql = config.db; 

    #pool = new Pool(this.#configpsql)

    get_pool = () => { return this.#pool; }
}

export default Conexion;  