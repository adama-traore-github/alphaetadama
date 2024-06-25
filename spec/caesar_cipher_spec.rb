require_relative '../lib/caesar_cipher'

describe "Caesar Cipher" do
  it "shifts lowercase letters" do
    expect(caesar_cipher("hello", 3)).to eq("khoor")
  end

  it "ignores non-alphabetic characters" do
    expect(caesar_cipher("Hello, World!", 3)).to eq("Khoor, Zruog!")
  end

  it "wraps around the alphabet" do
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  it "works with negative shifts" do
    expect(caesar_cipher("hello", -3)).to eq("ebiil")
  end
end
