require 'rspec'

# Location of the script you want to test
SCRIPT_PATH = './wiki.rb'

# Location of the test directory
TEST_DIRECTORY = './test_files/'

RSpec.describe 'File Processing' do
  # Get the list of files in the test directory
  Dir.foreach(TEST_DIRECTORY) do |filename|
    # Skip directories
    next if ['.', '..'].include?(filename)

    it "correctly processes #{filename}" do
      # Run your script on the test file
      output = `#{SCRIPT_PATH} #{TEST_DIRECTORY + filename}`

      # Here you can write your own tests to check the output of your script
      # For example, you can check if the output is as expected
      expect(output[0,5]).not_to eq("<html")

      # Or you can check if the script has any output at all
      expect(output).not_to be_empty
    end
  end
end
