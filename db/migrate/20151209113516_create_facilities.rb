class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
    	t.string :name
    	t.text :description
    	t.boolean :voided, :default => false
    	t.string :x_field
    	t.string :y_field

      t.timestamps
    end
  end
end
