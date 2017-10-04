class AddFinishedAtFieldToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :finished_at, :datetime
  end
end
