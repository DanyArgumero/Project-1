import express   from "express"; 
import morgan from 'morgan'; 
import taskRoutes from './routes/task.routes.js'; 
import cors from 'cors'; 

const app = express(); 
const port = process.env.PORT || 3000; 

app.use(cors()); 
app.use(morgan('dev'));    
app.use(express.json()); 
app.use(taskRoutes); 

function errorHandler (err, req, res, next) {
    if(err!==null)
        return next(err)
    res.status(500); 
    res.render('error', { error: err })
}

app.use(errorHandler); 


app.listen(port); 

