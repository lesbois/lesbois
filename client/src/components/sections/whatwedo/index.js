import React, { Component } from 'react'

class WhatWeDo extends Component {
    render() {
        return(
            <div id="what-we-do" className="section">
                <div className="container grid-lg">
                    <h1 className="title text-center">WHAT WE DO</h1>

                    <div className="columns">
                        <div className="column col-xs-4 section-grid-centered">
                            <img alt="engineering" src="/static/img/engineering.svg" />
                            <h3>Engineering</h3>
                            <p>
                                Keeping pace with the latest in technology yet
                                ensuring the right tools for the job.
                            </p>
                        </div>
                        <div className="column col-xs-4 section-grid-centered">
                            <img alt="development" src="/static/img/development.svg" />
                            <h3>Development</h3>
                            <p>
                                Keeping pace with the latest in technology yet
                                ensuring the right tools for the job.
                            </p>
                        </div>
                        <div className="column col-xs-4 section-grid-centered">
                            <img alt="design" src="/static/img/design.svg" />
                            <h3>Design</h3>
                            <p>
                                Keeping pace with the latest in technology yet
                                ensuring the right tools for the job.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default WhatWeDo
