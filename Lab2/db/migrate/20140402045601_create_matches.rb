class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date_match
      t.string :phase
      t.string :state
      t.reference :home_id
      t.reference :visitor_id
      t.string :bookmark
      t.string :winner
      t.string :loser
      t.integer :empate
      t.reference :group_id
      t.reference :stadium_id

      t.timestamps
    end
  end
end
