import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('employees' , {});

  this.route('login', {});
  this.route('about');
});

export default Router;
