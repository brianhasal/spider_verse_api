class CreateSpiders < ActiveRecord::Migration[7.0]
  def change
    create_table :spiders do |t|
      t.string :name
      t.integer :age
      t.string :arch_nemesis

      t.timestamps
    end
  end
end
