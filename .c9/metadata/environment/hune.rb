{"filter":false,"title":"hune.rb","tooltip":"/hune.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":51,"column":0},"action":"insert","lines":["def create_spiral_alphabet(board_size)","  # 盤を初期化","  board = Array.new(board_size) { Array.new(board_size) }","","  # アルファベットを配置する変数を設定","  alphabet = (\"A\"..\"Z\").to_a","  current_char_index = 0","","  # スパイラルを作成するための方向 [右, 下, 左, 上]","  directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]","  direction_index = 0","","  # 配置する位置","  row, col = 0, 0","","  (board_size**2).times do |i|","    # 現在の位置にアルファベットを配置","    board[row][col] = alphabet[current_char_index]","","    # 次のアルファベットへ","    current_char_index = (current_char_index + 1) % 26","","    # 次の位置を計算","    next_row = row + directions[direction_index][0]","    next_col = col + directions[direction_index][1]","","    # 境界チェックと既に埋まっている場合は方向転換","    if next_row < 0 || next_row >= board_size ||","       next_col < 0 || next_col >= board_size ||","       !board[next_row][next_col].nil?","      direction_index = (direction_index + 1) % 4","      next_row = row + directions[direction_index][0]","      next_col = col + directions[direction_index][1]","    end","","    # 次の位置を更新","    row, col = next_row, next_col","  end","","  # 対角線の文字列を抽出","  diagonal_string = (0...board_size).map { |i| board[i][i] }.join","","  [board, diagonal_string]","end","","# 36x36マスでの盤と対角線の文字列を取得","board_size = 36","board, diagonal_string = create_spiral_alphabet(board_size)","","# 結果を表示","puts \"#{diagonal_string}\"",""],"id":1}]]},"ace":{"folds":[],"scrolltop":103,"scrollleft":0,"selection":{"start":{"row":51,"column":0},"end":{"row":51,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1706101750914,"hash":"0166bbdff187d575a53628d8177e1b52d1eb8baf"}