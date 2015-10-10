class CreateTaskSets < ActiveRecord::Migration
  def change
    create_table :task_sets do |t|
      t.string :label
      t.references :task_template, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
