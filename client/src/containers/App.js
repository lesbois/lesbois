import React, { cloneElement, Component, Children } from 'react'
import { connect } from 'react-redux'
import omit from 'lodash/omit'

const screens = {
    xs: '480px',
    sm: '600px',
    md: '960px',
    xl: '1280px',
    xxl: '1140px'
}


class App extends Component {
    render() {
        const { props } = this
        const noform = omit(props, 'form')
        return(
            <div className="main">
                {Children.map(this.props.children, (child) => {
                    return cloneElement(child, { ...noform, screen })
                })}
            </div>
        )
    }
}


export default connect(state => state)(App)
