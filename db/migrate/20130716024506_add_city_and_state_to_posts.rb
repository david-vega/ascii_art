class AddCityAndStateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :city, :string
    add_column :posts, :state, :string
  end
end
