require 'rails_helper'

RSpec.describe User, type: :model do
  User.delete_all
  Friendship.delete_all
  User.create(email: 'bbosa2009@gmail.com', username: 'bmuhamood', password: 'password')
  test_u1 = User.first
  User.create(email: 'test@test.com', username: 'nsubuga', password: 'password')
  test_u2 = User.last
  Friendship.create(user_id: test_u1.id, friend_id: test_u2.id, status: false)
  Friendship.create(user_id: test_u2.id, friend_id: test_u1.id, status: false)

  it 'Checks if a user can be created' do
    test_u = User.create(email: nil)
    expect(test_u).to be_invalid
  end

  it 'Checks if a user can be created' do
    expect(test_u1).to be_valid
  end

    it '3. Checks for the friendships association' do
    expect(test_u1.friendships).not_to be_nil
  end

  it '4. Checks for the other_friendships association' do
    expect(test_u1.other_friendships).not_to be_nil
  end
end
