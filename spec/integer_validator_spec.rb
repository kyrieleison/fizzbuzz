require 'integer_validator'

describe IntegerValidator do
  it do
    integer_validar = described_class.new("1")
    expect(integer_validar.valid).to be_truthy
  end
end
