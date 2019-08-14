class User < ApplicationRecord
  has_merit

  has_secure_password
  validates :email, presence: true
  has_many :authorizations, dependent: :destroy

  def self.create_with_omniauth(auth)
    user = User.new(nickname: auth['info']['nickname'], avatar_id: auth['info']['avatar_url'])
        user.save(validate: false)
        user.authorizations.create!(provider: auth['provider'], uid: auth['uid'])
    user
  end
end
