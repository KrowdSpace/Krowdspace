import React from 'react';
import { Link } from 'react-router-dom';
import HomeHeader from './HomeHeader';
import HomeWelcome from './HomeWelcome';
import HomeStory from './HomeStory';
import Layout from './Layout';

const Home = (props) => {
  return (
    <React.Fragment>
      <HomeHeader header={ props.home.header }/>
      <HomeWelcome/>
      <HomeStory/>
    </React.Fragment>
  );
};

export default Home;
