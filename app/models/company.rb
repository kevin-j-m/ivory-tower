class Company < ApplicationRecord
  validates :name, presence: :true

  def generate_access_key
    if acquisition?
      SecureRandom.base64
    else
      "CO-#{SecureRandom.hex(8)}"
    end
  end
end
