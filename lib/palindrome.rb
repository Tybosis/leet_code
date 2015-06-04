# Given a string, determine if it is a palindrome, considering only
# alphanumeric characters and ignoring cases.

def palindrome(string)
  stripped = string.downcase.gsub(/[^a-z0-9]/, '')
  stripped == stripped.reverse
end
