total_count = 0

# 7桁の数の全パターンを生成する（0から9までの各桁）
(0..9).to_a.repeated_permutation(7) do |sequence|
  max_so_far = -1 # これまでの最大値を保持する変数。最初は存在しないため-1で初期化
  count = 0      # 列から削除されなかった数字の数

  sequence.each do |number|
    if number > max_so_far
      max_so_far = number # 新しい最大値を更新
      count += 1          # 削除されずに残る数字の数を増やす
    end
  end
  
  # 操作Sにより5つの数字が残る場合、カウントを増やす
  total_count += 1 if count == 5
end

puts total_count
#これはできなかった