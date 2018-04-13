import React from 'react';
import { Navbar, Nav, NavItem } from 'react-bootstrap';
import { IndexLinkContainer } from "react-router-bootstrap";
import { Link } from 'react-router-dom';

const Navigation = (props) => {

  const navigationLinks = (
    <Nav pullRight>
      {props.navigation.links.map((links) =>
       <IndexLinkContainer key={links.title} to={links.href}>
          <NavItem key={links.title}>
            {links.title}
          </NavItem>
        </IndexLinkContainer>
      )}
    </Nav>
  );

  return (
    <Navbar inverse collapseOnSelect>
      <Navbar.Header>
        <Navbar.Brand>
        <Link to={ props.navigation.brand.href }>{ props.navigation.brand.title }</Link>
        </Navbar.Brand>
        <Navbar.Toggle />
      </Navbar.Header>
      <Navbar.Collapse>
        { navigationLinks }
      </Navbar.Collapse>
    </Navbar>
  );
};

export default Navigation;
