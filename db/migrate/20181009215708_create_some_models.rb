class CreateSomeModels < ActiveRecord::Migration[5.1]
  def change
    create_table :some_models do |t|
      t.string :textcolumn
      t.integer :integercolumn
      t.date :datecolumn

      t.timestamps
    end
  end
end
