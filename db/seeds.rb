# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
suite = SurveySuite.create([{name:'2012年一季度中山街道四位一体群众满意度和安全感调查问卷'}])
question1 = SurvyQuestion.create([{order:1},{title:'您的职业'}])
question2 = SurvyQuestion.create([{order:2},{title:'您的性别'}])
question3 = SurvyQuestion.create([{order:3},{title:'您在本小区的居住时间'}])
question4 = SurvyQuestion.create([{order:4},{title:'您的实际年龄'}])
question5 = SurvyQuestion.create([{order:5},{title:'您的学历'}])
question6 = SurvyQuestion.create([{order:6},{title:'您是否熟悉本小区的社区民警'}])
question7 = SurvyQuestion.create([{order:7},{title:'您是否经常在小区内见到民警'}])
question8 = SurvyQuestion.create([{order:8},{title:'您是否知道或参加民警组织的治安巡逻，警情通报，民警述职等活动'}])
question9 = SurvyQuestion.create([{order:9},{title:'您认为社区民警服务群众意识'}])
question10 = SurvyQuestion.create([{order:10},{title:'您是否经常在小区内看到佩戴红袖章的群防群治队伍'}])
question11 = SurvyQuestion.create([{order:11},{title:'您觉得居委会对小区治安管理工作的重视程度'}])
question12 = SurvyQuestion.create([{order:12},{title:'您认为社区民警服务群众意识'}])
question13 = SurvyQuestion.create([{order:13},{title:'您认为社区民警服务群众意识'}])
question14 = SurvyQuestion.create([{order:14},{title:'您认为社区民警服务群众意识'}])