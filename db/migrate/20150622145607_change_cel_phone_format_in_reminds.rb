class ChangeCelPhoneFormatInReminds < ActiveRecord::Migration
  def change
  	change_column :reminds, :cel_phone, :text
  end
end
