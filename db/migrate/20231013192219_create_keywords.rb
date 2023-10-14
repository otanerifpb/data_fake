class CreateKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :keywords do |t|
      t.string :palavra, null: false
      t.references :article, null: false, foreign_key: true
      t.index [:article, :palavra], unique: true

      t.timestamps
    end
  end
end
