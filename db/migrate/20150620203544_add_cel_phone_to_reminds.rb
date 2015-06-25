class AddCelPhoneToReminds < ActiveRecord::Migration
  def change
    add_column :reminds, :cel_phone, :integer
  end
end
