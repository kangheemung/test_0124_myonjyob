# 最大積載量
max_capacity = 5000

# 荷物の重さ（降順）
packages = (1..600).to_a.reverse

# トラックの数を数える変数
truck_count = 0

# 現在のトラックの積載量
current_truck_load = 0

# 荷物を一つずつチェックして積み込む
packages.each do |weight|
  # 現在のトラックに積めるかどうかをチェック
  if current_truck_load + weight <= max_capacity
    # 積める場合は積載量に加算
    current_truck_load += weight
  else
    # 積めない場合は新しいトラックを使用して、積載量を初期化
    truck_count += 1
    current_truck_load = weight
  end
end

# 最後のトラックもカウント
truck_count += 1 unless current_truck_load == 0

puts "#{truck_count}"
