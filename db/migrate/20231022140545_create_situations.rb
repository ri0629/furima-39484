class CreateSituations < ActiveRecord::Migration[7.0]
  def change
    create_table :situations do |t|
      t.string     :title          , null: false
      t.text       :text           , null: false
      t.integer    :situation_id   , null: false
      t.timestamps
    end
  end
end
