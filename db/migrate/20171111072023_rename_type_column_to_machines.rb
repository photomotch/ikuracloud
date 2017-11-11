class RenameTypeColumnToMachines < ActiveRecord::Migration[5.1]
  def change
	rename_column :machines, :type, :typename
  end
end
