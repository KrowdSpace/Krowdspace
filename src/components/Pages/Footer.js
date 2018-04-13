import React from 'react';
import { Navbar, Nav } from 'react-bootstrap';
import { IndexLinkContainer } from "react-router-bootstrap";
import { Link } from 'react-router-dom';

const Footer = (props) => {
  var width = {
    float: "none"
  };
  var float = {
    float: "right"
  };
  return (
    <Navbar inverse>
      <Navbar.Header style={width}>
        <Navbar.Brand>
          { props.footer.copyright }
        </Navbar.Brand>
        <Navbar.Brand style={float}>
        { props.footer.designer }
        </Navbar.Brand>
      </Navbar.Header>
    </Navbar>
  );
};
export default Footer;