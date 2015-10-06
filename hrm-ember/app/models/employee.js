import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  gender: DS.attr('string'),
  dateOfBirth: DS.attr('date'),
  passportno: DS.attr('date'),
  passportIssue: DS.attr('date'),
  passportExpiry: DS.attr('date')
});
