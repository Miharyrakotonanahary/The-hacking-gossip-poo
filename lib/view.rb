require_relative 'gossip'
class View

	def create_gossip
		puts "Qui vous êtes ?"
		print "➡️ "
		content = gets.chomp
		puts "Balance ton gossip"
		print "➡️ "
		author = gets.chomp
		
		return params = [content, author]
	end

	def index_gossips(gossips)
		puts ""
		puts "💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥 "
		puts ""
		
		gossips.each do |gossip|
			puts gossip.content + "  >>  signé par " + gossip.author
		end
		
		puts ""
		puts "💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥💥 "
		puts ""
	end

	def delete_gossips(gossips)
		i = 0
		
		puts ""
		puts "------------- "
		puts ""
		
		gossips.each do |gossip|
			i += 1
			puts " ✅  #{i}  " + gossip.author + " : " + gossip.content 
			puts ""
		end
		
		puts ""
		puts "⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔ "
		puts ""
		
		puts "Quelle numero veut tu  supprimer"
		puts ""
		print "➡️ "
		
		num = gets.chomp.to_i 
		num -= 1
		gossips.delete_at(num)
		puts""
		puts""
		puts"✅"
		puts""
		puts""
		
		return gossips
	end

end