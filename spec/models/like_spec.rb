require 'rails_helper'

RSpec.describe Like, type: :model do
  User.delete_all
  Post.delete_all

  it 'Checks if a user can be created' do
    test_l = Like.create(post_id: nil, user_id: nil)
    expect(test_l).to be_invalid
  end
end
