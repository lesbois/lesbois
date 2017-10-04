import React, { Component } from 'react'

class Daily extends Component {
    render() {
        const { props } = this
        return (
            <div id="daily" className="section">
                <div className="container grid-lg">
                    <h1 className="title">DAILY</h1>

                    <div className="columns">
                        <div className="column col-xs-3">
                            <img alt="photo" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="photo" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="photo" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="photo" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="photo" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="photo" />
                        </div>
                        <div className="column col-xs-3">
                            <img alt="photo" />
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Daily
