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
    @tribes.clear
  end

  def individual_immunity_challenge
    @tribes.first.members.sample
  end

  def merge(name)
    new_members = []
    @tribes.each { |tribe| new_members += tribe.members }
    @tribes.clear
    add_tribe(Tribe.new(name: name, members: new_members))
    @tribes.first
  end
end