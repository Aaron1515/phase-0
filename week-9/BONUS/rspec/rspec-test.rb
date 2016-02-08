
# This calls the files name of the ruby file
require_relative "test.rb"


# This will see if the class is called RomanNumeralsConverter
describe RomanNumeralsConverter do


# This is also same as doing [converter = RomanNumeralsConverter.new]
let(:converter) {RomanNumeralsConverter.new}




# This is seeing if there's a method called roman_to_number
  describe "#roman_to_number" do
    # This will prompt asking to convert I to 1, this could be any string
    it "converts I to 1" do
      # this is passing the argument of "I"
      roman_number = "I"
      # this will put "I" in the argument and run the method and is expecing 1 as the answer.
      expect(converter.roman_to_number("I")).to eq 1
    end

    it "Converts II to 2" do
      roman_number = "II"
      expect(converter.roman_to_number("II")).to eq 2
    end

  end

end
