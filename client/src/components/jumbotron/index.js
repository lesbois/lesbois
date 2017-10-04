import React, { Component } from 'react'

class Jumbotron extends Component {
    render() {
        const { props } = this
        return (
            <div id="jumbotron" className="jumbotron">
                <div className="container grid-xl">
                    <div className="columns">
                        <div className="column col-xs-6">
                            <img src="/static/img/banner-image.png" className="img-responsive"/>
                        </div>
                        <div className="column col-xs-6 jumbotron-content">
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
