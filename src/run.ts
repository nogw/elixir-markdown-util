import { getAllDocs, insertAllDocs } from './docs';
import { connectDatabase } from './database';
import { config } from 'dotenv';

config();
connectDatabase();

const run = async () => await insertAllDocs(getAllDocs());

run();
