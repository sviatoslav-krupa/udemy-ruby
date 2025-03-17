# Notes:
#   * Ruby combines methods together to get final module definition
#   * In case of similar both modules and method names - overrides previous definitions

require_relative "13__low_quality"
require_relative "13__one_more_low_quality" # overrides previous definition of Downloadable.download_low_quality method
require_relative "13__high_quality"

class Song
  include Downloadable
end

song = Song.new
song.download_low_quality  #=> "pretty low quality" (not just "low quality")
song.download_high_quality #=> "high quality"
