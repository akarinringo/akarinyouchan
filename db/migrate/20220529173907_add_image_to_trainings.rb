class AddImageToTrainings < ActiveRecord::Migration[6.1]
  def change
    add_column :trainings, :image, :string
  end
end
