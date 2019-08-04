# for more details see: http://emberjs.com/guides/models/defining-models/

Enrollmentsystem.SubjectClassroom = DS.Model.extend
  classroom: DS.belongsTo 'classroom'
  subject: DS.belongsTo 'subject'
