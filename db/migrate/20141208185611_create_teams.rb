class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :sport_id
      t.references :sport, index: true
      t.references :match, index: true

      t.timestamps
    end
  end
end
