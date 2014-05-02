require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  test "subject attribut must not be empty" do
     subject= Subject.new
     assert subject.invalid?
     assert subject.errors[:title].any?
     assert subject.errors[:description].any?
     assert subject.errors[:image_url].any?
  end
end
