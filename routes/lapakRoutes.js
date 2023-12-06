import express from "express";
import { 
    getLapak,
    getLapakById,
    createLapak,
    updateLapak,
    deleteLapak,
 } from "../controller/lapakController.js";
const router = express.Router();

router.get('/lapak', getLapak);
router.get('/lapak/:id', getLapakById);
router.post('/lapak', createLapak);
router.patch('/lapak/:id', updateLapak);
router.delete('/lapak/:id', deleteLapak);

export default router;