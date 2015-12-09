class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers, :primary_key => :tracker_id do |t|
      t.integer :facility_id
      t.string :accession_num
      t.string :reason_for_test
      t.date :dispatched_date
      t.boolean :voided, :default => false
      t.string :void_reason

      t.timestamps
    end
  end
  
  def self.down
    drop_table :trackers
  end

end
