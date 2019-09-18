class AccessKeyGenerator
  def access_key(accessor)
    accessor.generate_access_key
  rescue NoMethodError
    raise UnknownAccessorType
  end
end

class UnknownAccessorType < StandardError
  def initialize(msg="Unkown accessor to generate access key for")
    super
  end
end
