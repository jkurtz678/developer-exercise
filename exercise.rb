class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split(" ")
    mark_words = words.collect do |word|
      if word.length > 4
        punct = /[[:punct:]]/.match(word[-1]) ? word[-1] : ""
        word = /[[:upper:]]/.match(word) ? "Marklar" : "marklar"
        word = word + punct
      else 
        word
      end
    end

    return mark_words.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    prev_1 = 1
    prev_2 = 1
    i = 2
    sum = 0
    
    while i < nth
      fib_num = prev_1 + prev_2
      if fib_num % 2 == 0
        sum += fib_num
      end
      prev_1 = prev_2
      prev_2 = fib_num
      i += 1
    end

    return sum;
  end
end
