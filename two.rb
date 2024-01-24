def replace_eights_with_snowman(n)
  n.to_s.gsub('8', 'SNOWMAN')
end

def generate_sequence_until_length(target_length)
  sequence = ""
  num = 1
  while sequence.length < target_length
    piece = replace_eights_with_snowman(num)
    sequence += "-" unless sequence.empty?
    sequence += piece
    num += 1
  end
  sequence
end

# 先頭からsequence_lengthだけの文字列を生成
sequence_length = 800001 + 30
full_sequence = generate_sequence_until_length(sequence_length)

# 目的の部分文字列（800001番目以降の30文字）を抽出
partial_sequence = full_sequence[800000, 30]

puts partial_sequence
