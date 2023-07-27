class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.time :time
      t.text :comment

<<<<<<< HEAD
      t.references :teacher, foreign_key: true
      t.references :category, foreign_key: true
=======
      t.references :teacher, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
>>>>>>> 8188f12f775dad8f9da810427d43141528d24324

      t.timestamps
    end
  end
end
