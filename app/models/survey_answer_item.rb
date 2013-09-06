class SurveyAnswerItem < ActiveRecord::Base
  belongs_to :survey_question
end
