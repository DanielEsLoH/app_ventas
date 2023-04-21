require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  def setup
    @user = User.last
  end

  test "welcome" do
    mail = UserMailer.with(user: @user).welcome
    assert_equal "Bienvenido a TuVenta", mail.subject
    assert_equal [@user.email], mail.to
    assert_equal ["no-reply@tuventa.com"], mail.from
    assert_match "Hola #{@user.username}, bienvenido a TuVenta.", mail.body.encoded
  end

end
