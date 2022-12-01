import { Router as expressRouter } from 'express';
import { deleteUser, getAllUsers, getUser, UpdateUser, createUser } from '../controller/User.controller.js';
import { deleteAlimentos, getAllAlimentos, getAlimentos, UpdateAlimentos, createAlimentos } from '../controller/Alimentos.controller.js';
import { deleteMedicamentos, getAllMedicamentos, getMedicamentos, UpdateMedicamentos, createMedicamentos } from '../controller/Medicamentos.controller.js';
import { getAllInsumos } from '../controller/Insumos.controller.js';
import { getAllEleQuiru } from '../controller/EleQuiru.controller.js';

const router = expressRouter();

router.get('/user', getAllUsers); 

router.get('/user/:idUser', getUser)

router.post('/user', createUser);

router.delete('/user/:idUser', deleteUser);

router.put('/user/:idUser', UpdateUser); 

router.get('/Alimentos', getAllAlimentos); 

router.get('/Alimentos/:idAlimentos', getAlimentos)

router.post('/Alimentos', createAlimentos);

router.delete('/Alimentos/:idAlimentos', deleteAlimentos);

router.put('/Alimentos/:idAlimentos', UpdateAlimentos); 

router.get('/Insumos', getAllInsumos); 

router.get('/EleQuiru', getAllEleQuiru); 

router.get('/Medicamentos', getAllMedicamentos); 

router.get('/Medicamentos/:idMedicamentos', getMedicamentos)

router.post('/Medicamentos', createMedicamentos);

router.delete('/Medicamentos/:idMedicamentos', deleteMedicamentos);

router.put('/Medicamentos/:idMedicamentos', UpdateMedicamentos); 


export default router;   