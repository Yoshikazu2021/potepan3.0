require "csv"

puts "1(新規でメモを作成 2(既存のメモを編集する)"

memo_type = gets.to_s

if memo_type == "1"
   puts "拡張子を除いたファイルを入力してください"
    file_name = gets
    file = File.open("#{file_name}.csv", "a")
    
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dを押します"
    memo_message = gets
    file.put "#{memo_message}"

    elsif memo_type == "2"
      puts "拡張子を除いたファイルを入力してください"
      file_name = gets
      file = File.open("#{file_name}.csv", "a")
      puts "メモしたい内容を記入してください"
      puts "完了したらCtrl + Dを押します"
      memo_message = gets
      file.put "#{memo_message}" 
    
  end 