# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

# pp @candidates
# puts @candidates[3]
# puts experienced?(@candidates[0])
# puts find(100)

# puts high_gitpoints? (@candidates[4])
# puts know_rb? (@candidates[3])
# puts days_applied? (@candidates[3])
# puts age_of_thePerson? (@candidates[2])


# pp qualified_candidates(@candidates)

pp ordered_by_qualifications(@candidates)