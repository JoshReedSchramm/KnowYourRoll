class CreatorMailer < ActionMailer::Base
  default from: "god@knowyourroll.com"

  def new_game_notification(game)
    @game = game
    mail(:to => game.creator.email, :subject => "You've created a new game!")
  end
end
