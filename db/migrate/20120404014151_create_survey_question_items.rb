class CreateSurveyQuestionItems < ActiveRecord::Migration
  def change
    create_table :survey_question_items do |t|
      t.integer :order
      t.string :body
      t.integer :survey_suite_id
      t.integer :survey_question_id

      t.timestamps
    end
  end
end
