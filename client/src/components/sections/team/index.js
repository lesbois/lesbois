import React, { Component } from 'react'

class Team extends Component {
    render() {
        const { props } = this
        return(
            <div id="team" className="section">
                <div className="container grid-lg">
                    <h1 className="title text-center">MEET THE TEAM</h1>

                    <div className="columns">
                        {props.gallery.map((gallery, index) => {
                            return (<div key={index} className="column col-xs-4">
                                <img alt="engineering" src={gallery.image_url} />

                                <h1>{gallery.title}</h1>
                                <p>{gallery.caption}</p>
                            </div>)
                        })}
                    </div>
                </div>
            </div>
        )
    }
}

export default Team
