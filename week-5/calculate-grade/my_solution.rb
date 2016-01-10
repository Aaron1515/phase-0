# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [myself].

# 0. Pseudocode

# What is the input? Array of numbers between 0-100
# What is the output? Output a, b, c, d, or f for an average score on the collections of numbers
# What are the steps needed to solve the problem?
#   Check how many papers are turned in.

#     Get the total number of scores added to gether.
   # total_score / nums_of_papers
#     total number score is   Total number of scores divided by numbers of papers

#   IF it is 90 or above then give it an A
#     if it is less than 90 or 80 or higher give it a B
#       if it is under 80 and higher or equal to 70 give it a C
#         if it is under 70 or equal to 60 give it a D
#           anything under 60 is a F


# 1. Initial Solution
def get_grade(scores)
#   Check how many papers are turned in.
  nums_of_papers = scores.length

#     Get the total number of scores added to gether.
  total_score = 0
  scores.each do |a|
  total_score += a
  end
   # total_score / nums_of_papers
  final_score = total_score / nums_of_papers
#     total number score is   Total number of scores divided by numbers of papers

#   IF it is 90 or above then give it an A
  if final_score >= 90
    return 'A'
#     if it is less than 90 or 80 or higher give it a B
  elsif final_score < 90 && final_score >= 80
    return 'B'
#       if it is under 80 and higher or equal to 70 give it a C
  elsif final_score < 80 && final_score >= 70
    return 'C'
#         if it is under 70 or equal to 60 give it a D
  elsif final_score < 70 && final_score >= 60
    return 'D'
#           anything under 60 is a F
  else
    return 'F'
  end
end


# 3. Refactored Solution

# def get_grade(scores)
#   total_score = 0
#   scores.each { |a| total_score += a }
#   final_score = total_score / scores.size
#   if final_score >= 90
#     return 'A'
#   elsif final_score < 90 && final_score >= 80
#     return 'B'
#   elsif final_score < 80 && final_score >= 70
#     return 'C'
#   elsif final_score < 70 && final_score >= 60
#     return 'D'
#   else
#     return 'F'
#   end
# end

# 4. Reflection
# Seems like we did something simular during our challenge in codecademy.com during the prep for our interview for devboot camp.  So I recreated it from memory.  I'm getting better at calulating and writing Pseudocode than before and I was able to do it in a shorter amount of time.