class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :titulo, null: false
      t.string :autor, null: false
      t.string :resumo
      t.string :universidade, null: false

      t.timestamps
    end
  end
end
