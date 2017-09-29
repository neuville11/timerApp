class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :professional_id
      t.string :gender
      t.timestamps
    end
  end
end
