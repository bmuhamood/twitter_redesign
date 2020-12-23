module ApplicationHelper
  def like_or_dislike_btn(post)
    like = Like.find_by(post: post, user: current_user)
    if like
      link_to('Dislike!', post_like_path(id: like.id, post_id: post.id), method: :delete)
    else
      link_to('Like!', post_likes_path(post_id: post.id), method: :post)
    end
  end

  def followers(user)
    user.other_friendships.count
  end

  def user_avatar(user, size = 40)
    if user.avatar.attached?
      user.avatar.variant(resize: "#{size}x#{size}!")
    else
      gravatar_image_url(user.email, size: size)
    end
  end

  def following(user)
    user.friendships.count
  end

  def follow(user)
    if current_user.friendships.where(friend_id: user.id).empty? && user.id != current_user.id
      link_to 'Follow', "/friendship/#{user.id}"
    elsif !current_user.friendships.where(friend_id: user.id).empty? && user.id != current_user.id
      link_to 'Unfollow', "/friendship/#{user.id}", method: 'delete'
    end
  end
end
