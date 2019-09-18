class AccessKeyGenerator
  def access_key(accessor_type:, acquired_company: nil, user_id: nil)
    if accessor_type == :company
      if acquired_company
        SecureRandom.base64
      else
        "CO-#{SecureRandom.hex(8)}"
      end
    elsif accessor_type == :user
      uuid = SecureRandom.uuid

      if user_id.odd?
        uuid << "-#{user_id}"
      else
        uuid
      end
    else
      raise UnknownAccessorType
    end
  end
end

class UnknownAccessorType < StandardError
  def initialize(msg="Unkown accessor to generate access key for")
    super
  end
end
