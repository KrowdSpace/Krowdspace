const path = require('path');
const webpack = require('webpack');
const ProvidePlugin = require('webpack/lib/ProvidePlugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const ExtractTextWebpackPlugin = require("extract-text-webpack-plugin");
const boostrapEntryPoints = require("./webpack.bootstrap.config");

const isProd = process.env.NODE_ENV === 'production';

const scssDev = ['style-loader', 'css-loader', 'sass-loader'];
const scssProd = ExtractTextWebpackPlugin.extract({
    fallback: 'style-loader',
    use: ['css-loader', 'sass-loader']
});

const scssConfig = isProd ? scssProd : scssDev;
const bootstrapConfig = isProd ? boostrapEntryPoints.prod : boostrapEntryPoints.dev;

module.exports = {
    entry: {
        app: './src/index.js',
        bootstrap: bootstrapConfig,
    },
    output: {
        filename: '[name].bundle.js',
        path: path.resolve(__dirname, 'www')
    },
    module: {
        rules: [{
          test: /bootstrap-sass(\\|\/)assets(\\|\/)javascripts(\\|\/)/,
          loader: 'imports-loader' // Make sure to have imports-loader and not imports
            },
            {
                test: /\.scss$/,
                use: scssConfig
            },
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: {
                    loader: 'babel-loader',
                    query: {
                        presets: ["es2015"]
                    }
                }
            },
            {
                test: /\.tag/,
                exclude: /node_modules/,
                loader: ['babel-loader', 'tag-loader']
            },
            {
                test: /\.(jpe?g|png|gif|svg|ico)$/i, // Fix .jpg loading by running brew install libpng
                use: [
                    'file-loader?name=images/[name].[ext]',
                    'image-webpack-loader'
                ]
            },
            {
              test: /\.(ai|eps|psd|zip|pdf)$/i,
              use: [
                  'file-loader?name=brand/[name].[ext]',
                  'image-webpack-loader'
              ]
          },
            {
                test: /\.woff2?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
                loader: 'url-loader?limit=10000&name=fonts/[name].[ext]'
            },
            {
                test: /\.(ttf|eot)$/,
                loader: 'file-loader?name=fonts/[name].[ext]'
            }
        ]
    },
    devServer: {
        contentBase: path.join(__dirname, 'www'),
        compress: true,
        hot: true,
        stats: 'errors-only',
        open: true
    },
    plugins: [
        new HtmlWebpackPlugin({
            title: 'Krowdspace - Back the Project, Not the Platform.',
            filename: 'index.html',
            minify: {
                collapseWhitespace: true
            },
            hash: true,
            template: 'src/views/index.html'
        }),
        new ExtractTextWebpackPlugin({
            filename: "/css/[name].css",
            disable: !isProd,
            allChunks: true
        }),
        new webpack.NamedModulesPlugin(),
        new webpack.HotModuleReplacementPlugin()
    ]
};
