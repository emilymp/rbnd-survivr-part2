class Jury
  attr_accessor :members

  def initialize
    @members = []
  end 

  def add_member(new_member)
    @members << new_member
  end

  def cast_votes(finalists)
    votes = {}
    finalists.each { |finalist| votes[finalist] = 0 }
    
    @members.each do |member|
      vote = finalists.sample
      puts "vote #{vote}".yellow  
      votes[vote] += 1
    end    
    votes
  end

  def report_votes(final_votes)
    final_votes.each { |finalist, num_votes| puts "#{finalist}, #{num_votes}".green }
  end

  def announce_winner(final_votes)
    finalists = final_votes.keys
    winner = final_votes[finalists[0]] > final_votes[finalists[1]] ? finalists[0] : finalists[1]
    puts "#{winner} wins!".yellow
  end
end