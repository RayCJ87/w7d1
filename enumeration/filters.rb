# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program


def find(id)
  # Your code Here
  @candidates.each do |candidate|
      if candidate[:id] == id
        return candidate
    end
  end
  return 'nil'
end

def experienced?(candidate)
  # Your code Here
  return candidate[:years_of_experience] > 1
end

def qualified_candidates(candidates)
  # Your code Here
  ans_arr = []
  candidates.each do |candidate|
    if experienced?(candidate) && high_gitpoints(candidate) && know_rb(candidate) && days_applied(candidate) && age_of_thePerson(candidate)
      ans_arr.push(candidate)
    end
  end
  return ans_arr;
end

def ordered_by_qualifications(candidates)
  sorted = (candidates.sort_by {|can| [can[:years_of_experience], can[:github_points]]}).reverse
  return sorted
end

# More methods will go below
def high_gitpoints? (candidate)
   candidate[:github_points] >= 100

end

def know_rb?(candidate)
   candidate[:languages].include? 'Ruby' || 'Python'
end

def days_applied?(candidate)
  candidate[:date_applied] >= 15.days.ago

end

def age_of_thePerson?(candidate)
 candidate[:age] >17

end
