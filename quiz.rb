#Use this class to create questions for the quiz 

class Question

  attr_accessor :query, :answer
  
  def initialize(query, answer)
    @query = query
    @answer = answer
  end

end

#Create some questions for the quiz

q1 = "In which country you can find Florence?\n[a] Spain\n[b] Italy\n[c] France"
q2 = "How many weeks are in a year?\n[a] 48\n[b] 56\n[c] 52"
q3 = "Who wrote Harry Potter?\n[a] J. K. Rowling\n[b] J. R. R. Tolkien\n[c] J. London"

#Create objects from the class to store the question and the right answer

questions = [
    Question.new(q1, "b"),
    Question.new(q2, "c"),
    Question.new(q3, "a")
  ]

#A methood to check if the aswer is corret and count the score

def test(questions)
  
  answer = ""
  score = 0

  questions.each {
    |question| puts question.query
    answer = gets.chomp
    if answer == question.answer
      score += 1
    end
  }

puts "You scored #{score}/#{questions.length}"

end

#Call the method with our question

test(questions)