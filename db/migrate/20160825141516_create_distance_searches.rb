class CreateDistanceSearches < ActiveRecord::Migration
  def change
    create_table :distance_searches do |t|
      t.integer :source_zip_code
      t.integer :destination_zip_code
      t.float :calculated_distance

      t.timestamps null: false
    end
  end
end
