# rubocop: disable Lint/RedundantCopDisableDirective
require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
# rubocop: enable Lint/RedundantCopDisableDirective
