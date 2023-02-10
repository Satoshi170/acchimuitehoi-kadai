Separator = "------------------------------"

def main
    def janken
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        hand = ["グー", "チョキ", "パー"]

        player_hand = gets.to_i
        program_hand = rand(3)

        if player_hand < 0 || player_hand > 3
            puts "入力された値が無効です"
            return true

        elsif player_hand == 3
            exit
        end
        
        puts Separator
        puts "あなた：#{hand[player_hand]}を出しました"
        puts "相手：#{hand[program_hand]}を出しました"
        puts Separator

        $result_janken = (player_hand - program_hand) % 3
        if $result_janken == 0      #あいこ
            puts "あいこで"
            return true
        
        elsif $result_janken == 1   #プレイヤーの負け
            return false
        
        elsif $result_janken == 2   #プレイヤーの勝ち
            return false
        end
    end

    puts "じゃんけん・・・"

    while janken
    end    

    def acchimuitehoi
        puts "あっちむいて〜"
        puts "0(上)1(下)2(左)3(右)"
        direction = ["上", "下", "左", "右"]

        player_direction = gets.to_i
        program_direction = rand(4)

        puts Separator
        puts "あなた：#{direction[player_direction]}を出しました"
        puts "相手：#{direction[program_direction]}を出しました"
        puts Separator

        $result_acchimuitehoi = player_direction - program_direction
        if $result_acchimuitehoi == 0  #勝負がついた時
            puts "あなたの勝ちです" if $result_janken == 2
            puts "あなたの負けです" if $result_janken == 1
            return false
        
        else                           #勝負がつかなかった時
            return true
        end        
    end

    acchimuitehoi

end

while main
end            
