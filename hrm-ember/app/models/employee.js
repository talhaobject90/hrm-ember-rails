import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  gender: DS.attr('string'),
  dateofbirth: DS.attr('date'),
  passportno: DS.attr('string'),
  passportissue: DS.attr('date'),
  passportexpiry: DS.attr('date')
});
