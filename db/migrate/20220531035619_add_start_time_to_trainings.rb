class AddStartTimeToTrainings < ActiveRecord::Migration[6.1]
  def change
    add_column :trainings, :start_time, :datetime
  end
end
