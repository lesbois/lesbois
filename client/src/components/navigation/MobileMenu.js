import React, { Children } from 'react'
import map from 'lodash/map'
import Transition from 'react-addons-css-transition-group'

function FirstChild(props) {
  const childrenArray = Children.toArray(props.children);
  return childrenArray[0] || null;
}

const MobileMenu = ({isOpen, menu}) => {
    return(
        <Transition
            transitionName="mobilenav"
            component={FirstChild}
            transitionEnterTimeout={600}
            transitionAppearTimeout={600}
            transitionLeaveTimeout={400}
            transitionAppear={true}>
            {isOpen ?
                <ul className="navbar-menu">
                    {map(menu, (value, key) => {
                        const { hashTag, name } = value
                        return(
                            <li key={key} className="navbar-menu-item">
                                <a href={hashTag} onClick={moveTo.bind(this)}>{name.toUpperCase()}</a>
                            </li>
                        )
                    })}
                </ul>
            : null }
        </Transition>
    )
}

export default MobileMenu