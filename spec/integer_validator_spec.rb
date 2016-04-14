require 'integer_validator'

describe IntegerValidator do
  it do
    integer_validar = described_class.new("1")
    expect(integer_validar.valid).to be_truthy
  end

  it do
    integer_validar = described_class.new("A")
    expect(integer_validar.valid).to be_falsy
  end
  
  it do
    integer_validar = described_class.new("0")
    expect(integer_validar.valid).to be_truthy
  end
end
