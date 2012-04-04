require 'json'
class ApiController < ApplicationController
  def upload
    data = JSON.parse(params[:data])
    deviceId = data["DevicdId"]
    device = Device.find_by_sn(devicdId)
    if (device = nil)
      device.sn = deviceId
      device.save
    end
    device.last_see_at = Time.now
    
    suite = SurveySuite.find(data["SuiteId"])
    answer = SurveyAnswer.new
    answer.recorded_at = data["Time"]
    answer.device = device
    answer.survey_suite = suite
    answer.latitude = data["Latitude"]
    answer.longitude = data["Longitude"]
    
    data["Answer"].each do |item|
      question = SurveyQuestion.find(item.key)
      answer_item = SurveyAnswerItem.new
      answer_item.body = item.value
      answer_item.survey_question = question
      answer.survey_answer_items << answer_item
    end
    
    answer.save
  end
  
  def test
  end
end
