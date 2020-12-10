# rubocop: disable Style/FrozenStringLiteralComment
# frozen_string_literal: true

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
# rubocop: enable Style/FrozenStringLiteralComment
