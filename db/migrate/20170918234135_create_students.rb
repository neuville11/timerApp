class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :account_number
      t.string :blood_type
      t.timestamps
    end
  end
end
