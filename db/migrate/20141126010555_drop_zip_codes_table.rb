class DropZipCodesTable < ActiveRecord::Migration
  def up
    drop_table :zip_codes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end