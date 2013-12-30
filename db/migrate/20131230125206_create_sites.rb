class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :superficie
      t.string :type_site
      t.string :liens
      t.string :description
      t.string :addresse
      t.string :ville
      t.string :pays
      t.string :string
      t.string :tel
      t.string :horaire

      t.timestamps
    end
  end
end
