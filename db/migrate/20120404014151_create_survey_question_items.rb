class CreateSurveyQuestionItems < ActiveRecord::Migration
  def change
    create_table :survey_question_items do |t|
      t.integer :order
      t.string :body

      t.timestamps
    end
  end
end
