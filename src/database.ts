import mongoose from 'mongoose';

const connectDatabase = () => {
  return new Promise((resolve, reject) => {
    mongoose.Promise = global.Promise;

    mongoose.connection
      .on('error', err => console.log(err))
      .on('close', () => console.log('db closed'))
      .on('open', () => console.log('db on'));

    mongoose.connect(process.env.DATABASE_URI as string);
  });
};

export { connectDatabase };
