class SurveyQuestion < ActiveRecord::Base
  belongs_to :survey_suite
end
