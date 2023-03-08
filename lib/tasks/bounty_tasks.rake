desc 'send open bounties email'
task send_bounty_email: :environment do
  @bounties = Bounty.where(status: "open").last(15)
  if @bounties.any?
    @users = User.all
    @users.each do |user|
      BountyMailer.with(user: user, bounties: @bounties).open_bounty.deliver_later
    end
  end
end
