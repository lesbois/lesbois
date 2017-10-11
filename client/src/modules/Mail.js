import {createConstants, createReducer} from 'redux-module-builder'

export const types = createConstants('mail')(
    'SENDING',
    'SENT'
)

export const initialState = {
    isSending: false,
    isSent: false,
    values: null
}

export const actions = {
    sendMail(values) {
        return (dispatch, getState) => {
            console.log(values)
            dispatch({type: types.SENDING})
        }
    }
}

export const reducer = createReducer({
    [types.SENDING]: (state) => {
        return {
            ...state,
            isSending: true
        }
    },
    [types.SENT]: (state) => {
        return {
            ...state,
            isSending: false
        }
    }
})
