class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.string :title
      t.string :description
      t.boolean :done

      t.timestamps null: false
    end
  end
end
