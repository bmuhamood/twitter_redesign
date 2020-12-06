require 'rails_helper'

RSpec.describe Comment, type: :model do
  User.delete_all
  Post.delete_all

  it 'Checks if a user can be created successfully' do
    test_c = Comment.create(post_id: nil, user_id: nil, content: nil)
    expect(test_c).to be_invalid
  end
end
