# frozen_string_literal: true

RSpec.describe RleRb do
  it "encodes a basic string correctly" do
    example_string = "aaaabbbcc"
    encoding = RleRb.encode(example_string)
    expect(encoding).to eq("4a3b2c")
  end

  it "decodes a basic string correctly" do
    example_string = "4a3b2c"
    decoding = RleRb.decode(example_string)
    expect(decoding).to eq("aaaabbbcc")
  end
end
