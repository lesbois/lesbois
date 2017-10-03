import React, { Component } from 'react'

class Navigation extends Component {
    render() {
        return(
            <div className="container grid-xl">
                <header className="navbar navbar-fixed">
                    <section className="navbar-section">
                        <a href="#" className="navbar-brand mr-2">
                            <img src="/static/img/logo-lbs.png" />
                        </a>
                    </section>
                    <section className="navbar-section">
                        <a href="#" className="navbar-brand mr-2">Spectre.css</a>
                        <a href="#" className="btn btn-link">Docs</a>
                        <a href="https://github.com/picturepan2/spectre" className="btn btn-link">GitHub</a>
                    </section>
                </header>
            </div>
        )
    }
}

export default Navigation
