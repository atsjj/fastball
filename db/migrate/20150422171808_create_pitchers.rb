class CreatePitchers < ActiveRecord::Migration
  def change
    create_table :pitchers do |t|
      t.string :name

      t.integer :fangraphs_id
      t.belongs_to :team, index: true

      t.timestamps null: false
    end
  end
end
