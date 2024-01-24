# 切手の種類と枚数
stamps = {205 => 30, 82 => 40, 30 => 10}

# 表せる金額の組み合わせを記録するハッシュ
combinations = Hash.new(0)

# 開始点：0円は必ず表せる
combinations[0] = 1

# 切手ごとにループ
stamps.each do |value, count|
  # 現在のコンビネーションを一時的に保存する
  current_combinations = combinations.clone
  
  # 1枚以上の切手を使う各組み合わせについて
  (1..count).each do |i|
    current_combinations.each do |previous_amount, previous_count|
      new_amount = previous_amount + value * i
      combinations[new_amount] = 1
    end
  end
end

# 0円は除外して合計通り数を計算
total_combinations = combinations.size - 1

puts " #{total_combinations}"
