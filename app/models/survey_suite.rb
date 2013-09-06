class SurveySuite < ActiveRecord::Base
  has_many :survey_questions
  has_many :survey_answers
end
