class CreateHitlists < ActiveRecord::Migration[7.0]
  def change
    create_table :hitlists do |t|
      t.string :primer_nombre
      t.string :primer_apellido
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
