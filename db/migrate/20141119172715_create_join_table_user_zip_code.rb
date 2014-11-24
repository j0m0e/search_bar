class CreateJoinTableUserZipCode < ActiveRecord::Migration
  def change
    create_join_table :users, :zip_codes 
      # t.index [:user_id, :zip_code_id]
      # t.index [:zip_code_id, :user_id]
  end
end
