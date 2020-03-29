class User
  @@user_count = 0
  def add(name)
    puts "User #{name} adicionado"
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new
first_user.add('João')

second_first = User.new
second_first.add('Mário')

third_first = User.new
third_first.add('José')