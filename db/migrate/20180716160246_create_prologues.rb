class CreatePrologues < ActiveRecord::Migration[5.1]
  def change
    create_table :prologues do |t|
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
