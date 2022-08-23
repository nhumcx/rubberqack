class AddNameToDucks < ActiveRecord::Migration[7.0]
  def change
    add_column :ducks, :name, :string
  end
end
