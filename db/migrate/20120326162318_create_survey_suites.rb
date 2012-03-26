class CreateSurveySuites < ActiveRecord::Migration
  def change
    create_table :survey_suites do |t|
      t.string :name

      t.timestamps
    end
  end
end
