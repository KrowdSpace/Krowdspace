import 'expose-loader?$!jquery';
import 'expose-loader?jQuery!jquery';
import 'expose-loader?ProgressBar!progressbar.js';
import './js/bootstrap';
import './js/slick';
import './js/validator';
import './js/ksc';
import './js/riot';

require("./brand/krowdspace-brand-assets.zip");
require("./brand/facebook-template.zip");
require("./brand/twitter-template.zip");
require("./brand/instagram-template.zip");
require("./brand/pinterest-template.zip");

require("./brand/krowdspace-press-release.pdf");
require("./brand/krowdspace-email-format.pdf");
require("./brand/kokoon.pdf");
require("./brand/oculus.pdf");
require("./brand/pebble.pdf");

require("./images/brand/krowdspace-alternative.svg");
require("./images/brand/krowdspace-alternative.png");
require("./images/brand/krowdspace-featured-alternative.svg");
require("./images/brand/krowdspace-featured-alternative.png");
require("./images/brand/krowdspace-featured.svg");
require("./images/brand/krowdspace-featured.png");
require("./images/brand/krowdspace-primary.svg");
require("./images/brand/krowdspace-primary.png");
require("./images/brand/krowdspace-primary-square.png");
require("./images/brand/krowdspace-reverse-alternative.svg");
require("./images/brand/krowdspace-reverse-alternative.png");
require("./images/brand/krowdspace-reverse-primary.svg");
require("./images/brand/krowdspace-reverse-primary.png");

require("./images/icons/krowdspace-favicon.jpg");
require("./images/icons/krowdspace-icon-57x57.jpg");
require("./images/icons/krowdspace-icon-72x72.jpg");
require("./images/icons/krowdspace-icon-114x114.jpg");
require("./images/icons/krowdspace-icon-144x144.jpg");

krowdspace.setDomain("https://api.krowdspace.com");
