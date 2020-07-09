# 初期化
ary = []

loop{
    # とりあえず出力
    puts("リストの操作を
        t. insert(head)
        b. insert(current head)
        a. insert(current back)
        c. current(辛そうなので最後に見送る)
        d. delete
        p. current(up)
        f. current(down)
        x. show
        q. end
    からabcdで選んでください")

    list = gets.chomp.to_s

    if list == "t" 
        puts "入力値を入れてください"
        tmp = gets.to_s
        ary.unshift(tmp)
        puts ary
        elsif list == "b"
            # あとで
        elsif list == "a"

        elsif list == "d"
            puts ary
            puts "削除する要素を入力してください"
            tmp = gets.to_s
            ary.delete(tmp)
        elsif list == "x"
            ary.each do |str|
                puts "> #{str}"
            end
        elsif list == "q"
            break
        else
            puts "errorがあります"
    end
}