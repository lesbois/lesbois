import React, { Component } from 'react'
import { reduxForm } from 'redux-form'
import { validator } from './validator'
import Modal from '../modal'
import ModalFooter from '../modal/footer'
import ModalBody from '../modal/body'
import { CONTACT } from './models/Contact'

class Contact extends Component {
    render() {
        const {props} = this
        const title = "Contact Us"
        console.log(props)
        return (
            <Modal title={title} onClose={this.props.close}>
                <ModalBody>
                    <div className="form-group">
                        <label className="form-label" htmlFor="input-example-1">Name</label>
                        <input className="form-input" type="text" id="input-example-1" placeholder="Name" />
                    </div>
                    <div className="form-group">
                        <label className="form-label" htmlFor="input-example-3">Message</label>
                        <textarea className="form-input" id="input-example-3" placeholder="Textarea" rows="3"></textarea>
                    </div>
                </ModalBody>
                <ModalFooter>
                    <button className="btn btn-primary">Submit</button>
                    <button className="btn">Cancel</button>
                </ModalFooter>
            </Modal>
        )
    }
}

export default reduxForm({
    form: 'contact-form',
    validate: validator(CONTACT)
})(Contact)
