# frozen_string_literal: true

RSpec.describe RleRb do
  it "encodes a basic string correctly" do
    example_string = "[aaaabbbcc&4"
    encoding = RleRb.encode(example_string)
    expect(encoding).to eq("1[4a3b2c1&14")
  end

  it "decodes a basic string correctly" do
    example_string = "1[4a3b2c1&1["
    decoding = RleRb.decode(example_string)
    expect(decoding).to eq("[aaaabbbcc&[")
  end
end
