import * as fs from 'fs';
import * as path from 'path';
import * as matter from 'gray-matter';
import { DocModel } from './model';

type matterDoc = matter.GrayMatterFile<string>[];

export const getAllDocs = async () => {
  const docs = await fs.promises.readdir(path.resolve('./docs'));
  const mdDocs: matterDoc = [];

  for (let k = 0; k < docs.length; k++) {
    const doc = path.resolve(`./docs/${docs[k]}`);
    mdDocs.push(matter.read(doc));
  }

  return mdDocs;
};

export const insertAllDocs = async (docs: matterDoc) => {
  for (let k = 0; k < docs.length; k++) {
    const { identifier, category, title, index } = docs[k].data;

    const update = {
      identifier,
      category,
      title,
      index,
      content: docs[k].content,
    };

    const options = { upsert: true, new: true, setDefaultsOnInsert: true };

    await DocModel.findOneAndUpdate({ identifier: identifier }, update, options);
  }

  console.log('updated!');
};
