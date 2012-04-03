# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
suite = SurveySuite.create(:name => '2012年一季度中山街道四位一体群众满意度和安全感调查问卷')
suite.survey_questions << SurveyQuestion.create(:order => 0,:title => '您的职业')
suite.survey_questions << SurveyQuestion.create(:order => 1,:title => '您的职业')
suite.survey_questions << SurveyQuestion.create(:order => 2,:title => '您的性别')
suite.survey_questions << SurveyQuestion.create(:order => 3,:title => '您在本小区的居住时间')
suite.survey_questions << SurveyQuestion.create(:order => 4,:title => '您的实际年龄')
suite.survey_questions << SurveyQuestion.create(:order => 5,:title => '您的学历')
suite.survey_questions << SurveyQuestion.create(:order => 6,:title => '您是否熟悉本小区的社区民警')
suite.survey_questions << SurveyQuestion.create(:order => 7,:title => '您是否经常在小区内见到民警')
suite.survey_questions << SurveyQuestion.create(:order => 8,:title => '您是否知道或参加民警组织的治安巡逻，警情通报，民警述职等活动')
suite.survey_questions << SurveyQuestion.create(:order => 9,:title => '您认为社区民警服务群众意识')
suite.survey_questions << SurveyQuestion.create(:order => 10,:title => '您是否经常在小区内看到佩戴红袖章的群防群治队伍')
suite.survey_questions << SurveyQuestion.create(:order => 11,:title => '您觉得居委会对小区治安管理工作的重视程度')
suite.survey_questions << SurveyQuestion.create(:order => 12,:title => '您是否经常看到小区保安在岗在位')
suite.survey_questions << SurveyQuestion.create(:order => 13,:title => '您对小区保安的服务态度是否满意')
suite.survey_questions << SurveyQuestion.create(:order => 14,:title => '您对小区的治安状况总体感受')
suite.survey_questions << SurveyQuestion.create(:order => 15,:title => '您对小区治安管理工作总体感受')
suite.survey_questions << SurveyQuestion.create(:order => 16,:title => '您对改善小区治安状况有何宝贵意见')

device = Device.create(:sn => '1234567890ABCDEFG')
answer = SurveyAnswer.new
answer.survey_suite = suite
answer.device = device
suite.survey_questions.each do |item|
  answer_item = SurveyAnswerItem.new
  answer_item.body = item.title + item.order.to_s
  answer_item.survey_question = item
  answer.survey_answer_items << answer_item
end
answer.save