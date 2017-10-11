import { combineReducers } from 'redux'
import { createRootReducer as processModules } from 'redux-module-builder'
import { routerReducer as routing, push } from 'react-router-redux'
import { reducer as form } from 'redux-form'
import * as Modal from './Modal'
import * as Mail from './Mail'

/**
 * import your modules here
 * sample
 * import MyModule from './MyModule'
 */


/**
 * You can register your module here
 * @type {Object}
 */
const modules = {
    Modal
}

const initialActions = {
    routing: {
        navigateTo: path => dispatch => dispatch(push(path))
    }
}

/**
 * You can add reducers from external npm modules
 * @type {Object}
 */
const initialReducers = {
    form,
    routing
}

const initialState = {}

/**
 * We are actually processing the modules why call createRootReducer if the function generates actions
 * @type {object}
 */
const bundled = processModules(modules, {
    initialInitialState: initialState,
    initialActions,
    initialReducers
})

const reducers = combineReducers(bundled.reducers)

/**
 * Function to activate the generated bundle
 * @return {object} reducers, actions, initialState
 */
export default () => {
    return {
        reducers,
        actions: bundled.actions,
        initialState: bundled.initialState
    }
}
