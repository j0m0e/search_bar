class RemoveNameFromQuizImages < ActiveRecord::Migration
  def change
    remove_column :quiz_images, :name, :string
  end
end
