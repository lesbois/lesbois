import React, { Component } from 'react'

class Partners extends Component {
    render() {
        return(
            <div id="partners" className="section">
                <div className="container grid-lg">
                    <h1 className="title text-center">PARTNERS</h1>

                    <div className="columns">
                        <div className="column col-xs-3">
                            <img alt="engineering" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="development" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="design" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="design" />
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Partners