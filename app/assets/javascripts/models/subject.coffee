# for more details see: http://emberjs.com/guides/models/defining-models/

Enrollmentsystem.Subject = DS.Model.extend
  subjectName: DS.attr 'string'
  sbjectDescription: DS.attr 'string'
  time: DS.attr 'string'
  day: DS.attr 'string'
  course: DS.attr 'string'
  schoolYear: DS.attr 'number'
  yearLvl: DS.attr 'string'
  section: DS.attr 'string'
