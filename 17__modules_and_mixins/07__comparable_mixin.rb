class OlympicMedal
  include Comparable

  MEDAL_TYPES = {
    gold: 3,
    silver: 2,
    bronze: 1
  }

  attr_reader :type

  def initialize(type)
    @type = type
  end

  # Need to create spaceship operator method (`<=>`) to tell Ruby how to compare objects
  def <=>(other)
    MEDAL_TYPES[type] <=> MEDAL_TYPES[other.type]
  end
end

gold_medal = OlympicMedal.new(:gold)
silver_medal = OlympicMedal.new(:silver)
bronze_medal = OlympicMedal.new(:bronze)

gold_medal > silver_medal     #=> true
gold_medal > bronze_medal     #=> true
silver_medal < gold_medal     #=> true
silver_medal < bronze_medal   #=> false
bronze_medal < silver_medal   #=> true
bronze_medal < gold_medal     #=> true
bronze_medal > gold_medal     #=> false

gold_medal == silver_medal    #=> false
gold_medal == bronze_medal    #=> false
silver_medal == bronze_medal  #=> false

silver_medal.between?(gold_medal, bronze_medal) #=> false
silver_medal.between?(bronze_medal, gold_medal) #=> true
