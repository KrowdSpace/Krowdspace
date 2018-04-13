import React from 'react';
import { Link } from 'react-router-dom';
import { Row, Col, Image } from 'react-bootstrap';
import HeaderImage from '../../../public/images/landing-banner.jpg';

const HomeHeader = (props) => {
  const headerTitle = (
    <h1>
      {props.header.title.map((header) =>
        <React.Fragment key={header.title}>
          <span>
            {header.title}
          </span>
          <br/>
        </React.Fragment>
      )}
      <small>{ props.header.subtitle }</small>
    </h1>
  );

  return (
    <Row className="show-grid">
        <div>
        <Image src={HeaderImage} responsive/>
        { headerTitle }
        </div>
    </Row>
  );
};

export default HomeHeader;
