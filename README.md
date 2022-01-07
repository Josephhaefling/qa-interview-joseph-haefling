# QA Code Test

### Setup
1. Download and unzip file
2. Rename your project "qa-interview-yourname"
3. Make sure your Ruby environment is using `ruby 2.3.3`
4. Be sure to bundle install
5. Run the exampcdle feature file:
    - `bundle exec cucumber features/example.feature`
6. Create the tests below in order.  You should be able to create any tests by building on the
   files that are already set up in the project.

Homepage='http://www.myrapname.com/'

### Tests
Write an automated test to validate each of the following:
1. The input fields exist
2. A negative scenario using the input fields
3. Input data into the fields
4. Submit a name for male with a nickname and validate that a new name has been prepended to the list
5. Submit twice for a female with a last initial and validate that a new name has been prepended to the list

## Aetna Challenge

### Contributors
[Joseph Haefling](https://terminal.turing.edu/profiles/404)

### Challenge Goals
Write an automated test to validate each of the following:
1. The input fields exist
2. A negative scenario using the input fields
3. Input data into the fields
4. Submit a name for male with a nickname and validate that a new name has been prepended to the list
5. Submit twice for a female with a last initial and validate that a new name has been prepended to the list

### Set-up

1. Clone down this repository to your local machine by running
```
$ git clone git@github.com:https://github.com/Josephhaefling/qa-interview-joseph-haefling
```

2. cd into the project folder on the command line by running 
```
$ cd qa-interview-BillWilke
```

3. To install the necessary packages, in your command line run: 
```
$ bundle install
```

4. To run the test, in your command line run:
```
$ bundle exec cucumber features/example.feature
```

### Technologies Used
 - Ruby 2.6.3
 - Cucumber
 - Selenium-Webdriver
 - Chromedriver
 - Capybara
 - Git
 
 ### Challenges
I initially started trying to write this in ruby but had some trouble getting the environment set up properly. I didn't want to spend too much time on just the set up so I went ahead and implemented the challenge in JavaScript. Getting used to new syntax can be tricky, but I found Cucumber to be pretty easy in that regard. The hardest part was using xpath to target specific elements on the page that did not have names, id's, or classes. 

### Reflection
I really enjoyed this challenge! Creating automated tests is really cool and I can see how it would be better then running integration tests on a virtual DOM. Thank you so much for the opportunity to complete this challenge. Wishing everyone at Aetna the happiest of holidays!
