import mongoose, { Document, Schema } from "mongoose";

export interface Doc {
  identifier: string;
  category: string;
  content: string;
  title: string;
  index: number;
}

export interface DocDocument extends Doc, Document {}

const DocSchema = new Schema({
  identifier: {
    type: String,
    unique: true,
    required: true
  },
  category: {
    type: String,
    required: true
  },
  content: {
    type: String,
    required: true
  },
  title: {
    type: String,
    required: true
  },
  index: {
    type: Number,
    required: true
  }
});

export const DocModel = mongoose.model<DocDocument>("Doc", DocSchema);
