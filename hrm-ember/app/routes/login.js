import Ember from 'ember';
import UnauthenticatedRouteMixin from 'simple-auth/mixins/unauthenticated-route-mixin';

import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin';

export default Ember.Route.extend({
ApplicationRouteMixin,
UnauthenticatedRouteMixin,
  actions:{
    sessionAuthenticationSucceeded: function(){
      this.transitionTo('about');
    }
  }

});
