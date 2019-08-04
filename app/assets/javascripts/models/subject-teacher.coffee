# for more details see: http://emberjs.com/guides/models/defining-models/

Enrollmentsystem.SubjectTeacher = DS.Model.extend
  teacher: DS.belongsTo 'teacher'
  subject: DS.belongsTo 'subject'
