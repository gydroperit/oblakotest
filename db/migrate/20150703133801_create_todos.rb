class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
	t.string :text
	t.boolean :isCompleted, default: false
	t.belongs_to :project
      t.timestamps null: false
    end
  end
end
