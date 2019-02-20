# Ruby Intro Answer Sheet

## Check your ruby version
Your ruby version:

## Floats and integers
1. 3.0 / 2
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 1.5
2. 3 / 2.0
    1. Expected (integer or float): float   
    2. Actual (integer or float): float
    3. Answer: 1.5
3. 4 ** 2.0
    1. Expected (integer or float): integer
    2. Actual (integer or float): integer
    3. Answer: 16
4. 4.1 % 2
    1. Expected (integer or float): float      
    2. Actual (integer or float): float
    3. Answer: 0.09999999999999964

## Strings
1. "tom" * 3
    * Expected: "tomtomtom"            
    * Actual: "tomtomtom"
2. "tom" + "tom"
    * Expected: "tomtom"  
    * Actual: "tomtom"
3. "tom" + 1
    * Expected: error
    * Actual: TypeError
4. "tom" / 2
    * Expected: error    
    * Actual: NoMethodError

## Calculations in IRB
1. How many hours are in a year?
    * Answer: 8760  => 365[Days]) * 24[hours]
2. How many minutes are in a decade?
    * Answer: 5256000  => (8760[Hours in a year] * 60[minutes]) * 10[decade]
3. How many seconds old are you?
    * Answer: 819936000
