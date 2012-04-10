# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
suite = SurveySuite.create(:name => '2012年一季度中山街道四位一体群众满意度和安全感调查问卷')
q1 = SurveyQuestion.create(:order => 1,:title => '您的职业')
q2 = SurveyQuestion.create(:order => 2,:title => '您的性别')
q3 = SurveyQuestion.create(:order => 3,:title => '您在本小区的居住时间')
q4 = SurveyQuestion.create(:order => 4,:title => '您的实际年龄')
q5 = SurveyQuestion.create(:order => 5,:title => '您的学历')
q6 = SurveyQuestion.create(:order => 6,:title => '您是否熟悉本小区的社区民警')
q7 = SurveyQuestion.create(:order => 7,:title => '您是否经常在小区内见到民警')
q8 = SurveyQuestion.create(:order => 8,:title => '您是否知道或参加民警组织的治安巡逻，警情通报，民警述职等活动')
q9 = SurveyQuestion.create(:order => 9,:title => '您认为社区民警服务群众意识')
q10 = SurveyQuestion.create(:order => 10,:title => '您是否经常在小区内看到佩戴红袖章的群防群治队伍')
q11 = SurveyQuestion.create(:order => 11,:title => '您觉得居委会对小区治安管理工作的重视程度')
q12 = SurveyQuestion.create(:order => 12,:title => '您是否经常看到小区保安在岗在位')
q13 = SurveyQuestion.create(:order => 13,:title => '您对小区保安的服务态度是否满意')
q14 = SurveyQuestion.create(:order => 14,:title => '您对小区的治安状况总体感受')
q15 = SurveyQuestion.create(:order => 15,:title => '您对小区治安管理工作总体感受')
q16 = SurveyQuestion.create(:order => 16,:title => '您对改善小区治安状况有何宝贵意见')

q1.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "工人")
q1.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "农民")
q1.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "商人")
q1.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "学生")
q1.survey_question_items << SurveyQuestionItem.create(:order => 5,:body => "自由职业者")

q2.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "男")
q2.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "女")

q3.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "1年以内")
q3.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "1年至5年")
q3.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "5年以上")

q4.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "35岁以下")
q4.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "35岁-50岁")
q4.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "50岁以上")

q5.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "小学，中学")
q5.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "大学本科，专科")
q5.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "研究生以上")
q5.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "其他")

q6.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "熟悉")
q6.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "知道")
q6.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不熟悉")
q6.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "不知道")

q7.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "经常见")
q7.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "有时见")
q7.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不了解")
q7.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "看不到")

q8.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "知道并参加过")
q8.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "知道但没参加过")
q8.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "听说过此类活动但没参加过")
q8.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "没有开展过上述活动")

q9.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "好")
q9.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "能够体现")
q9.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "还算可以")
q9.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "比较单薄")

q10.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "经常见")
q10.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "有时见")
q10.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不了解")
q10.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "看不到")

q11.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "很重视")
q11.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "比较重视")
q11.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不太重视")
q11.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "不太了解")

q12.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "经常见")
q12.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "有时见")
q12.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不了解")
q12.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "看不到")

q13.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "满意")
q13.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "比较满意")
q13.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不太满意")
q13.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "不太了解")

q14.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "很安全")
q14.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "比较安全")
q14.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不太安全")
q14.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "很不安全")

q15.survey_question_items << SurveyQuestionItem.create(:order => 1,:body => "满意")
q15.survey_question_items << SurveyQuestionItem.create(:order => 2,:body => "比较满意")
q15.survey_question_items << SurveyQuestionItem.create(:order => 3,:body => "不太满意")
q15.survey_question_items << SurveyQuestionItem.create(:order => 4,:body => "不太了解")

suite.survey_questions << q1
suite.survey_questions << q2
suite.survey_questions << q3
suite.survey_questions << q4
suite.survey_questions << q5
suite.survey_questions << q6
suite.survey_questions << q7
suite.survey_questions << q8
suite.survey_questions << q9
suite.survey_questions << q10
suite.survey_questions << q11
suite.survey_questions << q12
suite.survey_questions << q13
suite.survey_questions << q14
suite.survey_questions << q15
suite.survey_questions << q16

device = Device.create(:sn => 'FB00068106')
# answer = SurveyAnswer.new
# answer.survey_suite = suite
# answer.device = device
# suite.survey_questions.each do |item|
#   answer_item = SurveyAnswerItem.new
#   answer_item.body = "A" + item.order.to_s
#   answer_item.survey_question = item
#   answer.survey_answer_items << answer_item
# end
# answer.save
User.create(:email => "admin@test.com", :password => "123456", :password_confirmation => "123456")