class CreateReminds < ActiveRecord::Migration
  def change
    create_table :reminds do |t|
      t.integer :user_id
      t.string :medication
      t.string :dosage
      t.integer :med_id
      t.datetime :time
      t.integer :frequence

      t.timestamps null: false
    end
  end
end
