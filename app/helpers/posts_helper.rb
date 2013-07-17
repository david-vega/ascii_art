module PostsHelper
  def belongs_to_user? id
    id == current_user.id
  end
end
