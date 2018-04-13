require('./stylesheets/main.scss');

import { AppContainer } from 'react-hot-loader';
import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App';
import general from './ContentData.json';

const render = Component =>
  ReactDOM.render(
    <AppContainer>
      <Component general={general}/>
    </AppContainer>,
    document.getElementById('root')
  );

render(App);

// Webpack Hot Module Replacement API
if (module.hot) module.hot.accept('./components/App', () => render(App));
