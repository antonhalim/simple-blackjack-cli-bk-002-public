require 'pry'
  def deal_card
    card = rand(1..11)
  end

  def display_card_total(number)
    puts "Your cards add up to #{number}"
  end

  def welcome
    puts "Welcome to the Blackjack Table"
  end

  def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  end

  def initial_round
    total = 0
    2.times do
      total += deal_card
    end
    display_card_total(total)
    total
  end

  def end_game(num)
    puts "Sorry, you hit #{num}. Thanks for playing!"
  end

  def get_user_input
    gets.chomp
  end

  def hit?(card)
    prompt_user
    input = get_user_input
    if input == "s"
      card
    elsif input == "h"
      card + deal_card
    else
      invalid_command
    end
  end

  def invalid_command
    puts "Wrong input!"
  end

  #####################################################
  # get every test to pass before coding runner below #
  #####################################################

  def runner
    welcome
    number = initial_round
    while number <= 21
      total = hit?(number)
      display_card_total(total)
      number = total
    end
    end_game(total)
  end
