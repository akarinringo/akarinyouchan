class AddYoutubeUrlToTrainings < ActiveRecord::Migration[6.1]
  def change
    add_column :trainings, :youtube_url, :string
  end
end
