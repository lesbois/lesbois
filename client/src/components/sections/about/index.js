import React, { Component } from 'react'

class About extends Component {
    render() {
        const { props } = this
        return(
            <div id="about" className="section">
                <div className="container grid-lg">
                    <h1 className="title text-center">{props.heading}</h1>

                    <h3 className="text-center section-about">{props.sub_heading}</h3>

                    <p>{props.body}</p>
                </div>
            </div>
        )
    }
}

export default About
