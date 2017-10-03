import React, { Component } from 'react'

class WhatWeDo extends Component {
    render() {
        return(
            <div id="what-we-do" className="page-section">
                <div className="container grid-lg">
                    <h1>WHAT WE DO</h1>

                    <div className="columns">
                        <div className="column col-xs-4">
                            <img alt="engineering" />
                            <p>
                                Keeping pace with the latest in technology yet
                                ensuring the right tools for the job.
                            </p>
                        </div>
                        <div className="column col-xs-4">
                            <img alt="development" />
                            <p>
                                Keeping pace with the latest in technology yet
                                ensuring the right tools for the job.
                            </p>
                        </div>
                        <div className="column col-xs-4">
                            <img alt="design" />
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
