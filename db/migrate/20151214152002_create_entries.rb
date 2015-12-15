class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :date
      t.text :contents

      t.timestamps null: false
    end
  end
end
