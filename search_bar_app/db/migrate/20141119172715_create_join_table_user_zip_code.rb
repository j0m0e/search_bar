class CreateJoinTableUserZipCode < ActiveRecord::Migration
  def change
    create_join_table :users, :zip_codes 
      # t.index [:user_id, :zip_code_id]
      # t.index [:zip_code_id, :user_id]
<<<<<<< HEAD
=======
    
>>>>>>> 7d9fa96b49ce37bc54be18e3d313bbe648f65400
  end
end
