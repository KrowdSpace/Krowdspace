import React from 'react';
import { Link } from 'react-router-dom';
import { Row, Col, Image } from 'react-bootstrap';
import HeaderImage from '../../../public/images/landing-banner.jpg';
import Flexbox from 'flexbox-react';

const HomeStory = (props) => {

  return (
    <Row className="show-grid">
        <div className="text-center">
        <p>Our Story</p>
        </div>
        <Flexbox flexDirection="row" justifyContent="space-between">
        <div>
            <p>Bride</p>
            <p>Emily von Lossow</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div>
            <p>Groom</p>
            <p>Mason Halstead</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        </Flexbox>
    </Row>
  );
};

export default HomeStory;
