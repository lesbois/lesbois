import React, { Component } from 'react'

class Partners extends Component {
    render() {
        const { props } = this
        return(
            <div id="partners" className="section">
                <div className="container grid-xl">
                    <h1 className="title text-center">{props.heading}</h1>

                    <div className="columns">
                        {props.gallery.map((gallery, index) => {
                            return (<div key={index} className="column col-xs-3 section-line-util section-grid-centered">
                                <img alt="upvote" src={gallery.image_url} />
                            </div>)
                        })}
                    </div>
                </div>
            </div>
        )
    }
}

export default Partners
