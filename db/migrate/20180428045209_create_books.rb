class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.integer :publication_year
      t.timestamps
    end
  end
end
