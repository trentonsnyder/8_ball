def main_page(bank)
	puts "Ask me anything"
	query = gets.chomp
	check_easter_eggs(query, bank)
	puts "The universe says: #{bank.sample}"
	exit_menu(bank)
end

def exit_menu(bank)
	puts "Do you wish to quit?[yes/any other character]"
	option_exit = gets.chomp.downcase
	if option_exit == 'yes'
		puts "Toodles"
		exit(0)
	else
		main_page(bank)
	end
end

def check_easter_eggs(query, bank)
	if query == 'add_answers'
		add_answers(bank)
	elsif query == 'print_answers'
		print_answers(bank)
	elsif query == 'reset_answers'
		reset_answers(bank)
	end
end

def add_answers(bank)
	puts "What shall be added?"
	new_answer = gets.chomp
	add_check(bank, new_answer)
	main_page(bank)
end

def print_answers(bank)
	puts bank
	main_page(bank)  
end

def reset_answers(bank)

bank = ['The world may never know', 'A great many things', 'Ask me again tomorrow', 'The answer is always 6']
	puts main_page(bank)
end

def add_check(bank, new_answer)
	if bank.include?(new_answer)
		puts "Invalid Entry."
	else
		bank << new_answer
	end
end

bank = [ 'The world may never know', 'A great many things', 'Ask me again tomorrow', 'The answer is always 6']
main_page(bank)