class CreateSitesGibiers < ActiveRecord::Migration
  def self.up
    create_table :sites_gibiers, :id => false do |t|
      t.integer :site_id
      t.integer :gibier_id
    end
  end

  def self.down
    drop_table :sites_gibiers
  end
end
