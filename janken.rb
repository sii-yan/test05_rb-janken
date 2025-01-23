def valid_input?(input, max)
  input.between?(0, max)
end

def acchi_muite_hoi
  puts "あっち向いてほい..."
  puts "0: 上, 1: 下, 2: 左, 3: 右"

  player_direction = gets.to_i
  computer_direction = rand(0..3)

  directions = ["上", "下", "左", "右"]
  puts "あなた: #{directions[player_direction]}"
  puts "相手: #{directions[computer_direction]}"

  if player_direction == computer_direction
    puts "勝負あり"
    true
  else
    puts "もう一度じゃんけん！"
    false
  end
end

# じゃんけんが続く間はループ
game_over = false

while !game_over
  puts "じゃんけん..."
  puts "0:グー, 1:チョキ, 2:パー"

  # プレイヤーの手を選ぶ
  player_hand = gets.to_i
  # コンピューターの手をランダムで決める
  computer_hand = rand(0..2)

  # 入力値チェック
  if !valid_input?(player_hand, 2)
    puts "不正な値です。0〜2の数字を入力してください。"
    next
  end

  # プレイヤーとコンピューターの手を表示
  hands = ["グー", "チョキ", "パー"]
  puts = "あなたの手: #{hands[player_hand]}"
  puts = "相手の手: #{hands[computer_hand]}"

  if player_hand == computer_hand
    puts "あいこです！もう一度！！"
    next
  elsif (player_hand == 0 && computer_hand == 1) || (player_hand == 1 && computer_hand == 2) || (player_hand == 2 && computer_hand ==0)
    puts "あなたの勝ちです！"
    game_over = acchi_muite_hoi
  else
    puts "あなたの負けです..."
    game_over = acchi_muite_hoi
  end
end