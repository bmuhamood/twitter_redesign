# rubocop: disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  User.delete_all
  Friendship.delete_all

  it 'It checks if User has followers' do
    User.create(email: 'bbosa2009@gmail.com', username: 'bmuhamood', password: 'Hussein2019')
    test_u1 = User.first
    User.create(email: 'test@test.com', username: 'nsubuga', password: 'password')
    test_u2 = User.last
    Friendship.create(user_id: test_u1.id, friend_id: test_u2.id)
    expect(followers(test_u2).class).to be(Integer)
  end
end
# rubocop: enable Style/FrozenStringLiteralComment
