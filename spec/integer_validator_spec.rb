require 'integer_validator'

describe IntegerValidator do
  it do
    integer_validar = IntegerValifator.new("1")
    expect(integer_validar.valid).to be_truty
  end
end
