class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.decimal :amount
      t.integer :match_id
      t.integer :user_id
      t.references :match, index: true
      t.references :team, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
