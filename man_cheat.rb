
@array = ['mv', 'cp', 'mkdir', 'ls', 'rm']
def main_menu
 puts 'main menu'
 puts '(1) search'
 puts '(2) man_cheats'
 puts '(3) exit_program'
 number = gets.chomp.to_i
 case number
  when  1
   search
  when  2
   man_cheats
 when 3
   exit_program
 else
   puts 'invalid choice'
 end
end

def search
 puts 'enter cmd'
  cmd = gets.chomp
  puts `man #{cmd}`
  @array << cmd
end

def man_cheats
  puts 'enter desired cmd'
  @array.each {|x| puts x}
  cmd = gets.chomp
  case cmd
  when 'mv'
    puts `man #{cmd}`
  when 'cp'
    puts   `man #{cmd}`
  when 'mkdir'
    puts  `man #{cmd}`
  when 'ls'
    puts `man #{cmd}`
  when 'rm'
    puts `man #{cmd}`
  else
    puts 'invalid choice'
  end

end


def exit_program
  puts "goodbye"
  exit(0)
end

while true do
  main_menu
end
