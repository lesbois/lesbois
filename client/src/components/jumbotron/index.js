import React, { Component } from 'react'
import Contact from '../forms/Contact'
import range from 'lodash/range'
import map from 'lodash/map'
class Jumbotron extends Component {

    handleClick(e) {
        e.preventDefault()
        const { actions } = this.props
        actions.Modal.open(null)
    }

    render() {
        const { props, handleClick } = this
        return (
            <div id="jumbotron" className="jumbotron">
                <div className="container grid-xl">
                    <div className="columns">
                        <div className="column column col-6 col-lg-6 col-md-12 col-sm-12 col-xs-12 mt-2">
                            <img src="/static/img/banner-image.png" />
                        </div>
                        <div className="column column col-4 col-ml-auto col-lg-4 col-md-12 col-sm-12 col-xs-12 jumbotron-content">
                            <h1 className="heading">
                                LES BOIS <br/> ENGINEERING <br/> INNOVATIONS
                            </h1>

                            <h3 className="sub-heading">{`We're engineering awsome`}</h3>

                            <button className="btn btn-default btn-huge"
                                    onClick={handleClick.bind(this)}>CONTACT US</button>
                        </div>
                    </div>
                </div>
                <div className="wave">
                    {map(range(0, 800), (i) => {
                        return(<div key={i} className={`line wave-${i}`}></div>)
                    })}
                </div>
            </div>
        )
    }
}

export default Jumbotron
