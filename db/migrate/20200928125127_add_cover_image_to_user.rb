# frozen_string_literal: true

class AddCoverImageToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cover_image, :string
    add_column :users, :profile_image, :string
  end
end
