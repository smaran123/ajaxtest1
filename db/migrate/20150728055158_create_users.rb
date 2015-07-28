class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :email
      t.string :gender
      t.attachment :image
      t.string :ride_for
      t.string :from_location
      t.string :to_location
      t.string :start_day
      t.string :end_day
      t.string :start_time
      t.string :end_time
      t.string :mobile
      t.float :longitude
      t.float :latitude
      t.float :lat
      t.float :lan
      t.boolean :gmaps
      t.timestamps null: false
    end
  end
end
