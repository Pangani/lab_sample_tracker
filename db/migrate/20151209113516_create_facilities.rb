class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|

      t.timestamps
    end
  end
end
