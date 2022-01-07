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
$ git clone git@github.com: https://github.com/Josephhaefling/qa-interview-joseph-haefling.git
```

2. cd into the project folder on the command line by running 
```
$ cd qa-interview-joseph-haefling
```

3. To install the necessary packages, in your command line run: 
```
$ bundle install
```

4. To run the test, in your command line run:
```
$  bundle exec cucumber features/my_rap_name.feature
```

### Technologies Used
 - Ruby 2.6.3
 - Cucumber
 - Selenium-Webdriver
 - Chromedriver
 - Capybara
 - Git
 
### Challenges
The biggest challenge that I ran into was setting up the ruby environment. I was unable to run the project with Ruby 2.3.3 but I was able to run it with 2.6.3. Using a new assertion library was a bit of a challenge as well but once I got a few tests running I got the hang of it. 
 

### Reflection
I really loved this challenge! Working on a testing with Ruby was very different than what I am used to, but I enjoyed it. Creating automated tests with cucumber is great, it seems like a much better approach than running tests on a virtual DOM. Working on  Thank's for the opportunity to complete this challenge.
