class SurveyQuestion < ActiveRecord::Base
  belongs_to :survey_suite
  has_many :survey_question_items
end
