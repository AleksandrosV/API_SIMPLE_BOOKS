# Simple Books API Testing Framework

### PROJECT DESCRIPTION:

This repository contains a test automation framework built using Ruby and RSpec for API testing of Simple Books API.

### HOW TO RUN THE PROJECT:

1. Install dependencies:

* Ensure that you have Ruby and RSpec installed on your machine. You can install Ruby using a version manager like RVM or rbenv.

2. Clone API_SIMPLE_BOOKS repository:

* Clone the current repository to your local machine using `git clone https://github.com/AleksandrosV/API_SIMPLE_BOOKS.git`.

3. Install project dependencies:

* Navigate to the repository directory and run `bundle install` to install any project dependencies.

4. Run the tests:

* Navigate to the repository directory and run `rake spec`. This will run all the tests in the spec directory.

* If you want to run a specific test - navigate to repository directory and run `rspec spec/'name_of_specific_spec'`.

5. View the test results:

* After running the tests, RSpec will generate a report of the test results in the terminal. You can also view a detailed HTML report by opening the rspec_results.html file located in the reports directory.

* In the output folder you can find the http response.

* In the logs folder you can find the log files generated by the test framework: Requested method, Requested url, Requested headers, Requested body, Response code, Response body, Response headers.

* In the Screenshots folder are attached screenshots of the executed tests.

### RULES ON HOW TO WORK WITH THIS REPOSITORY:

* Simple Books API documentation: https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md

* Be aware that the access token is valid for 7 days.

* It is important to follow the coding conventions of the project, including indentation, naming conventions, and style. Check for syntax errors and use appropriate comments. Run `bundle exec rubocop` and make sure there are no warning or error messages.

* Please check the following links regarding the adopted ruby convention:
  - https://clearwater.readthedocs.io/en/stable/Clearwater_Ruby_Coding_Guidelines.html
  - https://ruby-software.com/coding-conventions-and-styles-in-ruby/
