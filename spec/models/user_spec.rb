require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { build(:user) }

  it { is_expected.to respond_to(:email) }
  it { is_expected.to respond_to(:encrypted_password) }
  it { is_expected.to respond_to(:confirmed?) }
  it { is_expected.to respond_to(:admin?) }
  it { is_expected.to respond_to(:redirects) }

end
