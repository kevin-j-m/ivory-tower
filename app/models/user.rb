class User < ApplicationRecord
  validates :username, presence: :true

  def generate_access_key
    if id.odd?
      "#{SecureRandom.uuid}-#{id}"
    else
      SecureRandom.uuid
    end
  end
end
