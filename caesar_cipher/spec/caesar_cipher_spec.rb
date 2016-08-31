require 'spec_helper'

describe "#caesar_cipher_better" do
  it "shifts a word by a positive number" do
    expect(caesar_cipher("abc", 2)).to eq("cde")
  end

  it "shifts a word by a negative number" do
    expect(caesar_cipher("cde", -2)).to eq("abc")
  end

  it "preserves punctuation, capitalization, and whitespace" do
    expect(caesar_cipher("Abc! abC?", 2)).to eq("Cde! cdE?")
  end

  it "shifts past 26 and loops back" do
    expect(caesar_cipher("abc", 28)).to eq("cde")
  end

  it "shifts past 26 and loops back negatively" do
    expect(caesar_cipher("cde", -28)).to eq("abc")
  end
end
