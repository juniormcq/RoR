class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date_match
      t.string :phase
      t.string :state
      t.integer :home_id
      t.integer :visitor_id
      t.string :bookmark
      t.string :winner
      t.string :loser
      t.integer :empate
      t.integer :group_id
      t.integer :stadium_id

      t.timestamps
    end
  end
end
