import React, { Component } from 'react'
import { connect } from 'react-redux'
import omit from 'lodash/omit'
import Jumbotron from '../components/jumbotron'
import Navigation from '../components/navigation'

class Home extends Component {
    render() {
        const { props } = this
        return(
            <div className="home">
                <Navigation { ...props } />
                <Jumbotron />
            </div>
        )
    }
}

export default Home
