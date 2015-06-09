# How can you tell an extrovert from an introvert at NSA?
# Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.

# I found this joke on USENET, but the punchline is scrambled.
# Maybe you can decipher it? According to Wikipedia,
# ROT13 (http://en.wikipedia.org/wiki/ROT13) is frequently used to obfuscate
# jokes on USENET.

# Hint: For this task you're only supposed to substitue characters.
# Not spaces, punctuation, numbers etc. Test examples:

# Test.expect(rot13("EBG13 rknzcyr.") == "ROT13 example.");
# Test.expect(rot13("This is my first ROT13 excercise!") ==
#                   "Guvf vf zl svefg EBG13 rkprepvfr!")

def rot13(message)
  ans = message.chars.map do |letter|
    if letter =~ /[a-zA-Z]/
      if (letter.ord > 77 && letter.ord < 97) || letter.ord > 109
        (letter.ord - 13).chr
      else
        (letter.ord + 13).chr
      end
    else
      letter
    end
  end
  ans.join
end
