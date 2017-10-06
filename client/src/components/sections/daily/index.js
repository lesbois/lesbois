import React, { Component } from 'react'

class Daily extends Component {
    render() {
        const { props } = this
        console.log(props)
        return (
            <div id="daily" className="section">
                <div className="container grid-lg">
                    <h1 className="title text-center">{props.heading}</h1>

                    <div className="columns">
                        {props.gallery.map((gallery, index) => {
                            return (<div key={index} className="column col-xs-3">
                                <img alt="photo" src={gallery.image_url} width="200px" height="200px"/>
                            </div>)
                        })}
                    </div>
                </div>
            </div>
        )
    }
}

export default Daily
