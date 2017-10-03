import React, { Component } from 'react'

class Footer extends Component {
    render() {
        const { props } = this
        return (
            <div className="footer">
                <div className="container grid-lg">
                    <div className="columns">
                        <div className="column col-xs-6">
                            <h1>LES BOIS <br/> ENGINEERING INNOVATIONS</h1>
                        </div>
                        <div className="column col-xs-6">
                            <button className="btn btn-default btn-huge">CONTACT US</button>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Footer
