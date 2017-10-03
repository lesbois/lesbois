import React, { Component } from 'react'

class Jumbotron extends Component {
    render() {
        const { props } = this
        return (
            <div className="jumbotron">
                <div className="container grid-lg">
                    <div className="columns">
                        <div className="column col-xs-6">
                            <img src="/static/img/banner-image.png" />
                        </div>
                        <div className="column col-xs-6">
                            <h1 className="heading">
                                LES BOIS <br/> ENGINEERING <br/> INNOVATIONS
                            </h1>

                            <h3 className="sub-heading">{`We're engineering awsome`}</h3>

                            <button className="btn btn-default btn-huge">CONTACT US</button>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Jumbotron
