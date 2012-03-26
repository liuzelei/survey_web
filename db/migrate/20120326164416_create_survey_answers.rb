class CreateSurveyAnswers < ActiveRecord::Migration
  def change
    create_table :survey_answers do |t|
      t.integer :survey_suite_id
      t.integer :device_id
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
