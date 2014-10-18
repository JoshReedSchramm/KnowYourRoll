class Game < ActiveRecord::Base
  validates :name, presence: true

  has_many :attribute_groups
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  has_many :game_attributes

  accepts_nested_attributes_for :creator

  before_create :set_gm_code
  after_create :send_notification_to_creator

  private
    def set_gm_code
      self.gm_code = SecureRandom.hex
    end

    def send_notification_to_creator
      CreatorMailer.new_game_notification(self).deliver!
    end
end
