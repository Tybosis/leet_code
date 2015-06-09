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

  it 'should work for even longer phrase' do
    phrase = "How can you tell an extrovert from an\nintrovert at NSA? Va gur ryringbef,
    \ngur rkgebireg ybbxf ng gur BGURE thl'f fubrf."
    ans = "Ubj pna lbh gryy na rkgebireg sebz na\nvagebireg ng AFN? In the elevators,
    \nthe extrovert looks at the OTHER guy's shoes."
    rot13(phrase).must_equal ans
  end

  it 'should not change string of only numbers' do
    rot13('123456').must_equal '123456'
  end

  it 'should not change string of only punctuation' do
    rot13('@.""!?/$&').must_equal '@.""!?/$&'
  end
end
