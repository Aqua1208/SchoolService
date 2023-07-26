class CreateUserLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :user_lessons do |t|
      t.boolean :reservation
      t.boolean :participation
      
      t.references :user, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
