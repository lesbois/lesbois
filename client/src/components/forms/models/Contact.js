export const CONTACT = {
    name: {
        tag: 'input',
        type: 'text',
        label: 'Name *',
        validator: 'isAlpha'
    },
    email: {
        tag: 'input',
        type: 'email',
        label: 'Email address *',
        validator: 'isEmail'
    },
    message: {
        tag:'textarea',
        type:'textarea',
        label:'Your message *',
        rows: 4,
        validator: 'isAlpha'
    }
}
