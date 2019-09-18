class AccessKeyGenerator
  def access_key(accessor_type:, acquired_company: nil, user_id: nil)
    if accessor_type == :company
      Company.new(acquisition: acquired_company).generate_access_key
    elsif accessor_type == :user
      User.new(id: user_id).generate_access_key
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
