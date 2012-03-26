class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :sn
      t.datetime :registered_at
      t.datetime :last_see_at

      t.timestamps
    end
  end
end
