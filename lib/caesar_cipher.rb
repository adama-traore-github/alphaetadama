def caesar_cipher(text, shift)
  alphabet = ('a'..'z').to_a

  result = text.chars.map do |char|
    if char =~ /[a-z]/
      char_index = alphabet.index(char)
      new_index = (char_index + shift) % 26
      alphabet[new_index]
    elsif char =~ /[A-Z]/
      char_index = alphabet.index(char.downcase)
      new_index = (char_index + shift) % 26
      alphabet[new_index].upcase
    else
      char
    end
  end.join
end
