class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :role_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end