class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.date :date
      t.decimal :value

      t.timestamps
    end
  end
end
