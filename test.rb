# =begin
# Once upon a time there was a series of 5* books about a very English hero called Harry. Children all over the world thought he was fantastic, and, of course, so did the publisher. So in a gesture of immense generosity to mankind, (and to increase sales) they set up the following pricing model to take advantage of Harry’s magical powers.

# One copy of any of the five books costs 8 EUR.
# If, however, you buy two different books from the series, you get a 5% discount on those two books.
# If you buy 3 different books, you get a 10% discount.
# With 4 different books, you get a 20% discount.
# If you go the whole hog, and buy all 5, you get a huge 25% discount.
# Note that if you buy, say, four books, of which 3 are different titles, you get a 10% discount on the 3 that form part of a set, but the fourth book still costs 8 EUR.

# Potter mania is sweeping the country and parents of teenagers everywhere are queueing up with shopping baskets overflowing with Potter books.

# Your mission is to write a piece of code to calculate the price of any conceivable shopping basket, giving as big a discount as possible.

# An example case,

# For example, how much does this basket of books cost?
# • 2 copies of the first book
# • 2 copies of the second book
# • 2 copies of the third book
# • 1 copy of the fourth book
# • 1 copy of the fifth book

# Answer:
# (4 * 8) - 20% discount [1st book, 2nd book, 3rd book, 4th book] + (4 * 8) - 20% discount [1st book, 2nd book, 3rd book, 5th book]
# = 25.60 + 25.60
# = 51.20
# =end


# purchase_list = ["1st", "2nd", "3rd", "4th", "5th", "1st", "2nd", "3rd"]

# def price_check(list)
#     price = 0
#     for group in list
#         if list.count == 5
#             price += 5 * price * 0.75
#         elsif list.count == 4
#             price += 4 * price * 0.8
#         elsif list.count == 3
#             price += 3 * price * 0.9
#         elsif list.count == 2
#             price += 2 * price * 0.95
#         elsif list.count == 1
#             price += 1 * price
#         else
#             price += 0
#         end
#     end
# end

# def sort_books(list)
#     for book in list
#         for list in possible
#             unless list.include?(book)
#                 list.push book
#                 break
#             end
#         end
#     print possible
#     puts
#     end
# end

# def final_price(purchase_list)
#     price = 8
    
#     lowest_final_price = price * purchase_list.count
    
#     possible[0].count.times do
#         price = 0
#         puts price
        
#         puts "Current Price: #{price}"
#         if price < lowest_final_price
#             lowest_final_price = price
#             "Lowest Price: #{lowest_final_price}"
#         end
#         for list in possible
#             for book in possible[0]
#                 unless list.include?(book)
#                     list.push(book)
#                     possible[0].delete(book)
#                     break
#                 end
#             end
#         end
#         print possible
#         puts
#     end
#     puts "Lowest Final Price #{lowest_final_price}"
# end

# final_price(purchase_list)
def check_diag(player)
    
    (0..2).each do |row|
        puts row
        (0..3).each do |col|
            puts col
            board = Array.new(6) { Array.new(7, nil) }
            board[row][col] = "pop"
            board[row + 1][col + 1] = "pop"
            board[row + 2][col + 2] = "pop"
            board[row + 3][col + 3] = "pop"
            for row2 in board
                puts row2.inspect
            end
            puts
            puts "--------------------------------------"
        end
    end
    
    puts "REVERSE"
    puts "-------------------------------------------------"
    puts "-------------------------------------------------"
    puts "-------------------------------------------------"
    
    (0..2).each do |row|
        puts row
        (6).downto(3).each.each do |col|
            puts col.to_i
            board = Array.new(6) {Array.new(7, nil)}
            board[row][col] = "pop"
            board[row - 1][col - 1] = "pop"
            board[row - 2][col - 2] = "pop"
            board[row - 3][col - 3] = "pop"
            for row2 in board
                puts row2.inspect
            end
            puts
            puts "--------------------------------------"
        end
    end
end

check_diag("player")