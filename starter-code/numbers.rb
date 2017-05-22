##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals

def count_to number
  n = number.to_i
  array = [];
  if n > 0
    (0..n).each do |n|
      array.push(n)
    end
  else
    (n..0).each do |n|
      array.unshift(n)
    end
  end
  p array
end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

def is_integer? number
  number.class == Integer ||
    ( number.is_a?(Float) && !number.nan? && number.to_i == number )
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

def is_prime? num
  if !is_integer?(num) || num <= 1 # must be integer; must be 2 or above
    false
  else
    # this could be a prime! loop through and check divisibility
    (2..(num-1)).each do |n|
      if num % n == 0 # it's not prime
        return false  # break the loop early
      end
    end
    true
  end
end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

def primes_less_than num
  primes = []
  (0...num).each do |n|
    if is_prime? n
      primes.push(n)
    end
  end
  primes
end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number

def iterative_factorial n
  if n >= 0 && is_integer?(n)
    if n == 0 || n == 1
      1
    else
      n * (iterative_factorial n-1)
    end
  else
    return Float::NAN
  end
end
