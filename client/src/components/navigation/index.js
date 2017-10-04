import React, { Component } from 'react'
import jump from 'jump.js'
import map from 'lodash/map'
import once from 'lodash/once'

class Navigation extends Component {
    moveTo(e) {
        e.preventDefault()
        const { attributes } = e.currentTarget
        const { href } = attributes
        jump(href.value)
    }
    componentDidMount() {
        document.addEventListener(
            'scroll',
            this.scrollListener.bind(this)
        )
    }
    scrollListener(e) {
        const firstSection = document.querySelector('.section')
        const pageTarget = firstSection.offsetTop - 1

        if(pageTarget <= window.pageYOffset) {
            this.refs.navbar.classList.add('switched')

        } else if(pageTarget > window.pageYOffset) {
            this.refs.navbar.classList.remove('switched')
        }

    }
    componentWillUnmount() {
        document.removeEventListener(
            'scroll',
            this.scrollListener.bind(this)
        )
    }
    render() {
        const { props, moveTo } = this
        const { menu } = props
        return(
            <div ref="navbar" className="navbar-container">
                <div className="container grid-xl">
                    <header className="navbar navbar-fixed">
                        <section className="navbar-section">
                            <a href="#" className="navbar-brand mr-2">
                                <img src="/static/img/logo-lbs.png" />
                                <img src="/static/img/logo-flipped.png" />
                            </a>
                            <a href="#" className="show-sm btn btn-primary btn-lg ml-auto"><i className="icon icon-menu"></i></a>
                        </section>
                        <section className="navbar-section">
                            <ul className="navbar-menu">
                                {map(menu, (value, key) => {
                                    const { hashTag, name } = value
                                    return(
                                        <li key={key} className="navbar-menu-item">
                                            <a href={hashTag} onClick={moveTo.bind(this)}>{name.toUpperCase()}</a>
                                        </li>
                                    )
                                })}
                            </ul>
                        </section>
                    </header>
                </div>
            </div>
        )
    }
}

export default Navigation
