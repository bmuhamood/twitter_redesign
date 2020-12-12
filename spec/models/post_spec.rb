require 'rails_helper'

RSpec.describe Post, type: :model do
  User.delete_all
  Post.delete_all

  it 'This Checks if a post can be created' do
    User.create(email: 'bbosa2009@gmail.com.com', username: 'bmuhamood', password: 'password')
    test_u = User.first
    test_p = Post.create(content: 'a test tweet', user_id: test_u.id)
    expect(test_p).to be_valid
  end
end
