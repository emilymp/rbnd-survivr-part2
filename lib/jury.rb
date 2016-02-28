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
    
    finalists.each do |finalist|
      votes[finalist] = 0
    end
    
    @members.each do |member|
      vote =  finalists.sample
      puts "vote #{vote}"  
      votes[vote] += 1
    end
      
    return votes
  end

  def report_votes(final_votes)
    final_votes.each do |finalist, num_votes|
      puts "#{finalist}, #{num_votes}"
    end
  end

  def announce_winner(final_votes)
    finalists = final_votes.keys
    winner = finalists.first
    finalists.each do |finalist|
      winner = final_votes[finalist] > final_votes[winner] ? finalist : winner
    end
    winner
  end
end