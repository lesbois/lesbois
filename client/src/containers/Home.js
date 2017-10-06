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



const UseSectionProps = (props) => {
    const sections = [
        WhatWeDo,
        About,
        Team,
        Partners,
        Daily
    ]

    return sections.map((Component, index) => {
        return(<Component {...props.sections[index]} key={index} />)
    })
}

class Home extends Component {
    render() {
        const { props } = this
        const { screens } = props

        return(
            <div className="home">
                <Navigation
                    screens={screens}
                    menu={menuSettings} />
                <Jumbotron />

                <UseSectionProps sections={props.sections} />

                <Footer />
            </div>
        )
    }
}

export default Home
