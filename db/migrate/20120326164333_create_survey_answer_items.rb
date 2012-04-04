class CreateSurveyAnswerItems < ActiveRecord::Migration
  def change
    create_table :survey_answer_items do |t|
      t.integer :survey_answer_id
      t.integer :survey_question_id
      t.string :body
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :orders, :image_updated_at

      t.timestamps
    end
  end
end
