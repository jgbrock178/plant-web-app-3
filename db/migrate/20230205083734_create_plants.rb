class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :sync_key
      t.decimal :water_level, precision: 3, scale: 1
      t.decimal :warn_level, precision: 3, scale: 1
      t.decimal :pump_speed, precision: 3, scale: 1
      t.decimal :pump_time, precision: 3, scale: 1
      t.decimal :wet_point, precision: 3, scale: 1
      t.decimal :dry_point, precision: 3, scale: 1
      t.decimal :alarm_interval, precision: 3, scale: 1
      t.integer :watering_delay
      t.boolean :auto_water, default: true
      t.boolean :alarm_enable, default: false

      t.timestamps
    end
  end
end
