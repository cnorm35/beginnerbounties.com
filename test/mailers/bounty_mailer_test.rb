require "test_helper"

class BountyMailerTest < ActionMailer::TestCase
  def setup
    # setup @user and @bounties here
  end

  test "bounty email" do
    mail = BountyMailer.with(user: @user, bounties: @bounties).open_bounty

    assert_equal ________, mail.subject
    assert_equal _________, mail.to
    assert_equal __________], mail.from
    assert_match bounties.first.title, mail.body.encoded
  end
end

