import {createConstants, createReducer} from 'redux-module-builder'

export const types = createConstants('modal')(
    'OPEN',
    'CLOSE'
)

export const initialState = {
    isOpen: false,
    component: null
}

export const actions = {
    open(component) {
        return (dispatch, getState) => {
            dispatch({type: types.OPEN, component})
        }
    },
    close() {
        return (dispatch, getState) => {
            dispatch({type: types.CLOSE})
        }
    }
}

export const reducer = createReducer({
    [types.OPEN]: (state, {component}) => {
        return {
            ...state,
            component,
            isOpen: true
        }
    },
    [types.CLOSE]: (state) => {
        return {
            ...state,
            component: null,
            isOpen: false
        }
    }
})
