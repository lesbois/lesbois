import React, { Component } from 'react'

class Footer extends Component {
    render() {
        const { props } = this
        return (
            <div className="footer">
                <div className="container grid-xl">
                    <div className="columns">
                        <div className="column footer-logo-section col-1">
                            <img className="footer-logo" src="/static/img/footer-logo.png" alt="footer logo" />
                        </div>
                        <div className="column col-6 footer-brand">
                            <h2>LES BOIS</h2>
                            <p>ENGINEERING INNOVATIONS</p>
                            <span>&copy; {new Date().getFullYear()} LES BOIS ENGINEERING INNOVATIONS</span>
                        </div>
                        <div className="column col-3 col-ml-auto footer-contact">
                            <button className="btn btn-default btn-huge">CONTACT US</button>
                        </div>
                    </div>
                    <div className="columns">
                        <div className="column col-12">
                            <ul className="footer-social">
                                <li>
                                    <a href="#">
                                        <i className="fa fa-linkedin-square" aria-hidden="true"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i className="fa fa-facebook-square" aria-hidden="true"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Footer
