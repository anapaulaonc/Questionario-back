class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password,
            length: { minimum: 6, message: 'A senha tem quer ter no mínimo 6 caracteres' },
            if: -> { new_record? || !password.nil? }
end
