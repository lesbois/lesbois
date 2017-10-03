import { Route, IndexRoute } from 'react-router'
import React, { Component } from 'react'
import App from './containers/App'
import Home from './containers/Home'

const routes = (
    <Route path="/" component={App}>
        <IndexRoute component={Home} />
    </Route>
)

export default routes
