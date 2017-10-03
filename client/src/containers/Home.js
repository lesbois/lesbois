import React, { Component } from 'react'
import { connect } from 'react-redux'
import omit from 'lodash/omit'
import Jumbotron from '../components/jumbotron'
import Navigation from '../components/navigation'
import WhatWeDo from '../components/whatwedo'
import About from '../components/about'
import Team from '../components/team'
import Partners from '../components/partners'
import Daily from '../components/daily'
import Footer from '../components/footer'

class Home extends Component {
    render() {
        const { props } = this
        return(
            <div className="home">
                <Navigation { ...props } />
                <Jumbotron />
                <WhatWeDo />
                <About />
                <Team />
                <Partners />
                <Daily />
                <Footer />
            </div>
        )
    }
}

export default Home
