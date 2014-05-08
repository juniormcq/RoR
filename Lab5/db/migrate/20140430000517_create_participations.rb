class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :team_id
      t.integer :grop_id
      t.string :total_jugados;integer
      t.integer :total_ganados
      t.integer :total_perdido
      t.integer :total_empate
      t.integer :total_anatados
      t.integer :total_recibidos

      t.timestamps
    end
  end
end
