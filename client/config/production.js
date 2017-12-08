import { join, resolve } from 'path'
import merge from 'webpack-merge'
import { output_paths } from './base'
import ExtractTextPlugin from 'extract-text-webpack-plugin'

const rules =[
    {
        test: /\.scss$/i,
        exclude: /node_modules/,
        use: ExtractTextPlugin.extract({
            use: ['css-loader', 'sass-loader']
        })
    }
]
export default ({env, options}) => {
    return {
        output: {
          path: output_paths.production,
          filename: 'app.js'
        },
        module: {
            rules
        },
        plugins: [
            new ExtractTextPlugin({
                disable: false,
                filename: '../css/app.css',
                allChunks: true
            })
        ]
    }
}
