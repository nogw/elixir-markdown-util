import { getAllDocs, insertAllDocs } from './docs';
import { connectDatabase } from './database';
import { config } from 'dotenv';

config();

(async () => {
  await connectDatabase();
  const docs = await getAllDocs();
  await insertAllDocs(docs);
})();
