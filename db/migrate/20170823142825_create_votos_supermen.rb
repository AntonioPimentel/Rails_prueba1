class CreateVotosSupermen < ActiveRecord::Migration[5.0]
  def change
    create_table :votos_supermen do |t|
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
