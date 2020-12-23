require 'rails_helper'

RSpec.describe Like, type: :model do
  User.delete_all
  Post.delete_all

  it 'Checks if a like can be created' do
    test_l = Like.create(post_id: nil, user_id: nil)
    expect(test_l).to be_invalid
  end

  it '2. SUCCESS CHECK - Checks if a like can be created' do
    User.create(email: 'bbosa2009@gmail.com', username: 'bmuhamood', password: 'mypassword')
    test_u = User.first
    Post.create(content: 'this is test tweet', user_id: test_u.id)
    test_p = Post.first
    test_l = Like.create(post_id: test_p.id, user_id: test_u.id)
    expect(test_l).to be_valid
  end
end
