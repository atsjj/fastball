class CreatePitcherStats < ActiveRecord::Migration
  def change
    create_table :pitcher_stats do |t|
      t.integer :w
      t.integer :l
      t.integer :sv
      t.integer :g
      t.integer :gs
      t.decimal :ip
      t.decimal :k
      t.decimal :bb
      t.decimal :hr
      t.decimal :babip
      t.decimal :lob
      t.decimal :gb
      t.decimal :hrfb
      t.decimal :era
      t.decimal :fip
      t.decimal :xfip
      t.decimal :war

      t.belongs_to :pitcher, index: true

      t.timestamps null: false
    end
  end
end
