ary = [] # 配列の初期化
num = 0 # 現在点

loop{
    # とりあえず出力
    puts("リストの操作を
        t. insert(head)
        b. insert(current head)
        a. insert(current back)
        c. current
        d. delete
        p. current(up)
        f. current(down)
        x. show
        q. end
    からtbacdpfxqで選んでください")

    list = gets.chomp.to_s

    if list == "t" 
        puts "入力値を入れてください"
        tmp = gets.to_s
        ary.unshift(tmp)
        elsif list == "b"
            puts "現在点の前に追加する値を入力してください"
            tmp = gets.to_s
            ary.insert(num, tmp)
        elsif list == "a"
            puts "現在点の後ろに追加する値を入力してください"
            tmp = gets.to_s
            num += 1
            ary.insert(num, tmp)
            puts ary
        elsif list == "c"
            puts ary
            puts "現在点を選んでください"
            tmp = gets.to_s
            num = ary.index(tmp)
        elsif list == "d"
            puts ary
            puts "削除する要素を入力してください"
            tmp = gets.to_s
            ary.delete(tmp)
        elsif list == "p"
            num -=1
        elsif list == "f"
            num +=1
        elsif list == "x" # 出力
            ary.each do |str|
                puts "> #{str}"
            end
        elsif list == "q" # 終了
            break
        else
            puts "errorがあります"
    end
}