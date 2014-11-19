class CreateQuizImages < ActiveRecord::Migration
  def change
    create_table :quiz_images do |t|
    	t.string :name
      t.text :filepath
      t.string :category
      t.integer :value
    end
  end
end
