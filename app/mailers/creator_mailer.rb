class CreatorMailer < ActionMailer::Base
  default from: 'game-master@know-your-roll.r14.railsrumble.com'

  def new_game_notification(game)
    @game = game
    mail(:to => game.creator.email, :subject => "You've created a new game!")
  end
end
