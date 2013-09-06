class SurveyQuestionItem < ActiveRecord::Base
  belongs_to :survey_suite
  belongs_to :survey_question
end
