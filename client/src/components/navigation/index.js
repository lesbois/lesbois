import React, { Component } from 'react'
import jump from 'jump.js'
import map from 'lodash/map'

class Navigation extends Component {
    moveTo(e) {
        const { attributes } = e.currentTarget
        const { href } = attributes
        jump(href.value)
    }
    render() {
        const { props, moveTo } = this
        const { menu } = props
        return(
            <div className="navbar-container">
                <div className="container grid-xl">
                    <header className="navbar navbar-fixed">
                        <section className="navbar-section">
                            <a href="#" className="navbar-brand mr-2">
                                <img src="/static/img/logo-lbs.png" />
                            </a>
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
