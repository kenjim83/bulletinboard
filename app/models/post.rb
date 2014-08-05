class Post < ActiveRecord::Base
  belongs_to :user

  def self.most_recent
    Post.order(updated_at: :desc)
  end


end
