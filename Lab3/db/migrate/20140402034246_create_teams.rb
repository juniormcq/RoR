class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name_team
      t.string :name_manager
      t.string :flag_team
      t.string :uniforme
      t.string :information

      t.timestamps
    end
  end
end
