# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
=begin

def essay_writer with parameters title topic date thesis statement pronoun
    if pronoun = male
        add in he and him into story
        elseif pronoun = female
        add in her and she into story

    print title
    print string with #{parameter}
    
    
=end
# Output:
# Steps:


# 3. Initial Solution
def essay_writer(title, topic, date, thesis_statment, pronoun)
    if (pronoun == "male")
        present2 = "he"
        present3 = "him"
        elsif (pronoun == "female")
        present3 = "her"
        present2 = "she"
    end
    
    puts title
    puts
    puts "#{topic} was an important person in #{date}. #{present2.capitalize} did a lot. I want to learn more about #{present3}. #{thesis_statment} #{topic + "'s"} contribution was important."
    
end

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male")





# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer("The First Shot", "Tom Hanson", 1997, "Her most important contribution to history is that he grounded the stuhavien period, a peaceful time that lasted over 3 months ago.", "female")







# 5. Reflection 
=begin
 
 What parts of your strategy worked? What problems did you face?
 
 I think the strategy was simple. We were trying to use the hash input method to include the strings listed in the parameters into the printed text.
 
 
 What questions did you have while coding? What resources did you find to help you answer them?

 
 Did you learn any new skills or tricks?

 Solidified concepts such as #{}
 
 
 How confident are you with each of the Learning Competencies?
 Confident
 
 Which parts of the challenge did you enjoy?
 Coming up with a strategy.
 
 
 Which parts of the challenge did you find tedious?
 Writing out the whole method.

