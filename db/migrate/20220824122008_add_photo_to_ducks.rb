class AddPhotoToDucks < ActiveRecord::Migration[7.0]
  def change
    add_column :ducks, :photo, :string
  end
end
