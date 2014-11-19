class CreateJoinTableBarUser < ActiveRecord::Migration
  def change
    create_join_table :bars, :users
      # t.index [:bar_id, :user_id]
      # t.index [:user_id, :bar_id]
<<<<<<< HEAD
=======
    
>>>>>>> 7d9fa96b49ce37bc54be18e3d313bbe648f65400
  end
end
