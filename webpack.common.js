const path = require('path');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

module.exports = {
	context: path.join(__dirname, 'src'),
	entry: {
		app: './bibtex-bibjson.ts'
	},
	plugins: [ new CleanWebpackPlugin() ],
	output: {
		filename: 'bibtex-bibjson.js',
		path: path.resolve(__dirname, 'dist'),
		library: 'bibtex-bibjson',
		libraryTarget: 'commonjs2'
	},
	resolve: {
		extensions: [ '.ts', '.tsx', 'js' ]
	},
	module: {
		rules: [
			{
				test: /\.ts/,
				exclude: /node_modules/,
				loader: 'ts-loader',
				options: {
					transpileOnly: true,
					compilerOptions: {
						isolatedModules: true
					}
				}
			}
		]
	},
	node: {
		Buffer: false
	},
	externals: {}
};
