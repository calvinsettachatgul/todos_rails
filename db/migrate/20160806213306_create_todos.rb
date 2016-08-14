class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :detail
      t.string :status

      t.timestamps
    end
  end
end
