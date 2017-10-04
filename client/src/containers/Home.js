import React, { Component } from 'react'
import { connect } from 'react-redux'
import omit from 'lodash/omit'
import Jumbotron from '../components/jumbotron'
import Navigation from '../components/navigation'
import WhatWeDo from '../components/sections/whatwedo'
import About from '../components/sections/about'
import Team from '../components/sections/team'
import Partners from '../components/sections/partners'
import Daily from '../components/sections/daily'
import Footer from '../components/footer'

const menuSettings = [
    {
        name: 'home',
        hashTag: '#jumbotron'
    },
    {
        name: 'what we do',
        hashTag: '#what-we-do'
    },
    {
        name: 'about',
        hashTag: '#about'
    },
    {
        name: 'team',
        hashTag: '#team'
    },
    {
        name: 'partners',
        hashTag: '#partners',
    },
    {
        name: 'daily',
        hashTag: '#daily'
    }
]

class Home extends Component {
    render() {
        const { props } = this
        return(
            <div className="home">
                <Navigation menu={menuSettings}/>
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
