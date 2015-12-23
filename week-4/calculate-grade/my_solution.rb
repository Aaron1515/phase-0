
# Calculate a Grade

# I worked on this challenge [by myself, with: ].
# Sanderfer

# Your Solution Below
def get_grade(score)
  if score >= 90
   return "A"
  elsif score < 90 && score >=80
    return "B"
  elsif score < 80 && score >= 70
    return "C"
  elsif score < 70 && score >= 60
    return "D"
  else
    return "F"
  end
end