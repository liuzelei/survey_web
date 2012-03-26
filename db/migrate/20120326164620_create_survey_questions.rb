class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.integer :survey_suite_id
      t.integer :order
      t.string :title

      t.timestamps
    end
  end
end
