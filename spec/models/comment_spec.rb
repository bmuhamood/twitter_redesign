require 'rails_helper'

RSpec.describe Comment, type: :model do
  User.delete_all
  Post.delete_all

  it 'Checks if a Comment can be created successfully' do
    test_c = Comment.create(post_id: nil, user_id: nil, content: nil)
    expect(test_c).to be_invalid
  end

    it '2. SUCCESS CHECK - Checks if a tweet can be created' do
    User.create(email: 'bbosa2009@gmail.com', username: 'bmuhamood', password: 'mypassword')
    test_u = User.first
    Post.create(content: 'testing the tweet', user_id: test_u.id)
    test_p = Post.first
    test_c = Comment.create(post_id: test_p.id, user_id: test_u.id, content: 'testing the comment')
    expect(test_c).to be_valid
  end

  it 'Checks if a comment can be created without content' do
    test_c = Comment.create(post_id: nil, user_id: nil, content: nil)
    expect(test_c).to be_invalid
  end
end
