class CreateJoinTableBarUser < ActiveRecord::Migration
  def change
    create_join_table :bars, :users
      # t.index [:bar_id, :user_id]
      # t.index [:user_id, :bar_id]

  end
end
