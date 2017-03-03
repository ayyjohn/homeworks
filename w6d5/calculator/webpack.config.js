var path = require('path');

module.exports = {
  context: __dirname,
  entry: "./app.jsx",
  output: {
    path: "./",
    filename: "bundle.js"
  },
  devtool: 'source-maps',
  module: {
    loaders: [
      {
        test: [/\.jsx?$/, /\.js?$/],
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          presets: ['react', 'es2015']
        }
      }
    ]
  },
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
};
