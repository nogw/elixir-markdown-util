import mongoose from 'mongoose';

const connectDatabase = async () => {
  mongoose.connection
    .on('error', err => console.log(err))
    .on('close', () => console.log('db closed'))
    .on('open', () => console.log('db on'));

  await mongoose.connect(process.env.DATABASE_URI as string);
};

export { connectDatabase };
