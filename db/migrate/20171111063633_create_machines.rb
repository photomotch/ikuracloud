class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.string :type
      t.string :cpu
      t.string :memory
      t.string :publickey
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
