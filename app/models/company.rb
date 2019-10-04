class Company < ApplicationRecord
  validates :name, presence: :true

  def generate_access_key
    SecureRandom.uuid
  end
end
