class SurveyAnswer < ActiveRecord::Base
  belongs_to :survey_suite
  belongs_to :survey_question
  has_many :survey_answer_items
  belongs_to :device
end
