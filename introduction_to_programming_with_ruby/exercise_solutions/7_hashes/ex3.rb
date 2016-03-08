season = {winter: "December January February", spring: "March April May", summer: "June July August", fall: "September October November"}

season.each_key { |key| puts key }
season.each_value { |value| puts value }
season.each { |key, value| puts "The months of #{key} are #{value}" }
