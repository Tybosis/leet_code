require 'test_helper'
require 'rot13'

describe 'rot 13 decryptor method' do
  it 'should decrypt the message correctly' do
    rot13("EBG13 rknzcyr.").must_equal "ROT13 example."
  end

  it 'should work for a longer phrase' do
    rot13("This is my first ROT13 excercise!").must_equal
          "Guvf vf zl svefg EBG13 rkprepvfr!"
  end
end
