import * as fs from "fs";
import * as path from "path";
import * as matter from "gray-matter";
import { DocDocument, DocModel } from "./model";

export const getAllDocs = () => {
  const docs = fs.readdirSync(path.resolve("./docs"));
  const mdDocs: matter.GrayMatterFile<string>[] = [];

  for (let k = 0; k < docs.length; k++) {
    const doc = path.resolve(`./docs/${docs[k]}`);
    const mdDoc = matter.read(doc);
    mdDocs.push(mdDoc);
  }

  return mdDocs;
};

export const insertAllDocs = async (docs: matter.GrayMatterFile<string>[]) => {
  for (let k = 0; k < docs.length; k++) {
    const { identifier, category, title, index } = docs[k].data;

    const update = {
      identifier,
      category,
      title,
      index,
      content: docs[k].content
    };

    const options = { upsert: true, new: true, setDefaultsOnInsert: true };

    await DocModel.findOneAndUpdate(
      { identifier: identifier },
      update,
      options
    );
  }

  console.log("updated!");
};
