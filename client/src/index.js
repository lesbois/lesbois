import { render } from 'react-dom'
import React from 'react'
import ClientProvider from './providers/ClientProvider'
import './assets/app.scss'


const useClient = (props, target) => {

    const mount = document.getElementById(target)

    render(<ClientProvider {...props} />, mount)

}

module.exports = { useClient }
