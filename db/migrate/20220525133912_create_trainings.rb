class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string :training_content
      

      t.timestamps
    end
  end
end
