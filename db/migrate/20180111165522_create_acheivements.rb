class CreateAcheivements < ActiveRecord::Migration[5.1]
  def change
    create_table :acheivements do |t|
      t.string :name
      t.references :client, foreign_key: true
      t.date :date_acheived
      t.string :notes

      t.timestamps
    end
  end
end
