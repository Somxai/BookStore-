def alphabet_position(char)
  if char =~ /[A-Za-z]/
  char = char.downcase
  char.ord - 'a'.ord + 1
  else
    nil
  end
end

def position_to_char(position)
  ('a'.ord + position - 1).chr
end

def caecar_cifer(position , shift_key)
  char_array = position.chars
  p char_array

  position_array = char_array.map { |cha| alphabet_position(cha) }
  p position_array

  position_array.map! do |pos|
    if pos  # Only apply shift to non-nil positions
      new_pos = (pos + shift_key) % 26
      new_pos = 26 if new_pos == 0  # Handle wrap-around case
      new_pos
    else
      pos  # Keep non-alphabet characters as they are
    end
  end

  shifted_pos = position_array.map do |re| re ? position_to_char(re) : '' end

  shifted_pos.join("")

end


print caecar_cifer("vilakod voradeth", 5)
