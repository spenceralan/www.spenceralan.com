class AddRepositoryUrl < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :repository, :string
  end
end
