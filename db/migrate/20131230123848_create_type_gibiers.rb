class CreateTypeGibiers < ActiveRecord::Migration
  def change
    create_table :type_gibiers do |t|
      t.string :name

      t.timestamps
    end
  end
end
