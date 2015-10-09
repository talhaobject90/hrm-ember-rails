import Ember from 'ember';
import LoginControllerMixin from 'simple-auth/mixins/login-controller-mixin';

export default Ember.Controller.extend(LoginControllerMixin, {
  authenticator: 'simple-auth-authenticator:devise',
    actions: {
      invalidateSession: function() {
        var self = this;

        return Ember.$.ajax({
          url: '/users/sign_out',
          type: 'DELETE'
        }).then(function() {
          return self._super();
        });
      }
    }


});
