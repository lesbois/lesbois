import React, { Component } from 'react'

class Partners extends Component {
    render() {
        return(
            <div id="partners" className="section">
                <div className="container grid-xl">
                    <h1 className="title text-center">PARTNERS</h1>

                    <div className="columns">
                        <div className="column col-xs-3 section-line-util section-grid-centered">
                            <img alt="upvote" src="/static/img/upvote.png" />
                        </div>
                        <div className="column col-xs-3 section-line-util section-grid-centered">
                            <img alt="eetech" src="/static/img/eetech.png"/>
                        </div>
                        <div className="column col-xs-3 section-line-util section-grid-centered">
                            <img alt="all about circuits" src="/static/img/circuits.png" />
                        </div>
                        <div className="column col-xs-3 section-line-util section-grid-centered">
                            <img alt="go promote" src="/static/img/grow-promote.png" />
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Partners
