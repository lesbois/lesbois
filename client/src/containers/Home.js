import React, { Component } from 'react'
import { connect } from 'react-redux'
import omit from 'lodash/omit'

class Home extends Component {
    render() {
        const { props } = this
        return(
            <div className="home">
                this is home page
            </div>
        )
    }
}

export default Home
