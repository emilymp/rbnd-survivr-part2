class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = [tribe1, tribe2]
  end

  def add_tribe(new_tribe)
    @tribes << new_tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes = []
  end

  def individual_immunity_challenge
    @tribes.last.members.sample
  end

  def merge(name)
    new_members = []
    @tribes.each do |tribe| 
      new_members += tribe.members
    end

    add_tribe(Tribe.new(name: name, members: new_members))
    @tribes.last
  end
end