import React, { cloneElement, Component, Children } from 'react'
import { connect } from 'react-redux'
import omit from 'lodash/omit'

const screens = {
    xs: 480,
    sm: 600,
    md: 960,
    xl: 1280,
    xxl: 1140
}


class App extends Component {
    render() {
        const { props } = this
        const noform = omit(props, 'form')
        return(
            <div className="main">
                {Children.map(this.props.children, (child) => {
                    return cloneElement(child, { ...noform, screens })
                })}
            </div>
        )
    }
}


export default connect(state => state)(App)
