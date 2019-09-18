require "rails_helper"

RSpec.describe Company do
  it { is_expected.to validate_presence_of :name }
end
