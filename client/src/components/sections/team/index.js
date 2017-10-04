import React, { Component } from 'react'

class Team extends Component {
    render() {
        return(
            <div id="team" className="section">
                <div className="container grid-lg">
                    <h1 className="title text-center">MEET THE TEAM</h1>

                    <div className="columns">
                        <div className="column col-xs-4">
                            <img alt="engineering" />

                            <h1>ADAM</h1>
                            <p>The Boss</p>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Team
