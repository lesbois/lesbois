import React, { Component } from 'react'

class Navigation extends Component {
    render() {
        return(
            <div id="navigation">
                <div className="container grid-lg">
                    <header className="navbar">
                        <section className="navbar-section">
                            <a href="#" className="navbar-brand mr-2">
                                <img src="/static/img/logo-lbs.png" />
                            </a>
                        </section>
                        <section className="navbar-section">
                            <a href="#" className="btn btn-link">HOME</a>
                            <a href="#" className="btn btn-link">WHAT WE DO</a>
                            <a href="#" className="btn btn-link">PARTNERS</a>
                            <a href="#" className="btn btn-link">ABOUT</a>
                            <a href="#" className="btn btn-link">DAILY</a>
                        </section>
                    </header>
                </div>
            </div>
        )
    }
}

export default Navigation
