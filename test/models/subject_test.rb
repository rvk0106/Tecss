require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  test "subject attribut must not be empty" do
     subject= Subject.new
     assert subject.invalid?
     assert subject.errors[:title].any?
     assert subject.errors[:description].any?
     assert subject.errors[:image_url].any?
  end
  def new_subject(image_url)
  	Subject.new(title: "My subject name",
  		description: "yyyy",
  		image_url: image_url
  		);
  end
  test "image url" do
	ok = %w{ vk.jpg ff.jpg kkasa.jpg http://a.b.v./ff.jpg}
	bad =%w{nnnn.v nnnppp.kk adas.hhh lll.kk}
	ok.each do |img_ur|
		assert new_subject(img_ur).valid?, "#{img_ur} should be valid"
	end	
	bad.each do |img_ur|
		assert new_subject(img_ur).invalid?, "#{img_ur} shouldn't be valid"
	end
  end	
end
