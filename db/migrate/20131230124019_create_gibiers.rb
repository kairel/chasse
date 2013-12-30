class CreateGibiers < ActiveRecord::Migration
  def change
    create_table :gibiers do |t|
      t.string :name
      t.string :icon
      t.integer :type_gibier

      t.timestamps
    end
  end
end
