class CreateSurveyAnswerItems < ActiveRecord::Migration
  def change
    create_table :survey_answer_items do |t|
      t.integer :survey_answer_id
      t.integer :survey_question_id
      t.string :body

      t.timestamps
    end
  end
end
