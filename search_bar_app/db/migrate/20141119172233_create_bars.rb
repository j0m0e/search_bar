class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
    	t.string :business_id
    end
  end
end
