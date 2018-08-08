# is_isogram(string)
# returns true if isogram (if there are repeating letters in the string)

string = "lamb"

uniq_char_ary = string.downcase.chars.uniq
(string.length == uniq_char_ary.length) ? false : true



