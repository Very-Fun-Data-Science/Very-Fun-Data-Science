class User < ApplicationRecord
  has_and_belongs_to_many :articles
  has_secure_password

  validates :password, on: :create, presence: true, length: { minimum: 6 }, confirmation: true
  validates :email, on: :create, presence: true, uniqueness: true,
            inclusion: {
              in: %w(cernhofer@gmail.com hayleeham@gmail.com sushmitavgopalan@uchicago.edu),
              message: "Sorry, you can't have an account. Try Facebook."
            }
end
