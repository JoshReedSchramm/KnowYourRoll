class Game < ActiveRecord::Base
  validates :name, presence: true

  has_many :attribute_groups
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  has_many :game_attributes
  has_many :characters

  accepts_nested_attributes_for :creator

  after_create :send_notification_to_creator

  private
    def send_notification_to_creator
      CreatorMailer.new_game_notification(self).deliver!
    end
end
