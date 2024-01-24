# 50x50のチェス版を想定
board_size = 50
moves = 25

# ナイトの移動方向（8方向）
directions = [
  [-2, -1], [-1, -2], [1, -2], [2, -1],
  [-2,  1], [-1,  2], [1,  2], [2,  1]
]

# 座標がボード内であるか確認するメソッド
def inside_board?(x, y, size)
  x.between?(0, size - 1) && y.between?(0, size - 1)
end

# DPテーブルの初期化（3次元配列）
dp = Array.new(moves + 1) { Array.new(board_size) { Array.new(board_size, 0) } }

# 初期位置を(0, 0)（左上）に設定
dp[0][0][0] = 1

# 各移動ステップごとにDPテーブルを更新
(1..moves).each do |move|
  (0...board_size).each do |x|
    (0...board_size).each do |y|
      directions.each do |dx, dy|
        prev_x, prev_y = x - dx, y - dy
        if inside_board?(prev_x, prev_y, board_size)
          dp[move][x][y] += dp[move - 1][prev_x][prev_y]
        end
      end
    end
  end
end

# 到達可能なマスの数をカウント
reachable_squares = 0
(0...board_size).each do |x|
  (0...board_size).each do |y|
    reachable_squares += 1 if dp[moves][x][y] > 0
  end
end

# 出力
puts "Number of reachable squares in #{moves} moves: #{reachable_squares}"
