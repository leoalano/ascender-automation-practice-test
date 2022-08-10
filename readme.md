# Test Automation Project of the webstore automationpractice.com

## Description

This is a test automation project made by Class 02 of Ascender. The objective of this project is 
to develop the skills of the group automating tests and to work collaboratively using the agile methodology. 
Areas of learning include: Robot Framework, Selenium, user stories, Gherkin, trello, git and github, Python, agile methodologies, etc.  

## Table of Contents (Optional)

If your README is long, add a table of contents to make it easy for users to find what they need.

- [Installation](#installation)
- [Usage](#usage)
- [How to Contribute](#how-to-contribute)
- [Credits](#credits)
- [License](#license)

## Installation

### Configuration 
1. Make sure you have Python 3 and Visual Studio Code installed.
2. Install and configure the plugin *Robot Framework Intellisense* in VS Code. 
3. Install the Robot Library using *pip install robotframework*. Details here [Robot - Get Started](https://robotframework.org/getting-started)
4. Install Selenium Library using *pip install --upgrade robotframework-seleniumlibrary*. Details here [Selenium Library](https://robotframework.org/SeleniumLibrary)
5. Configure the webdriver
a. Choose desired browser / correct version and extract the executable webdriver file. 
[Mozilla Firefox](https://github.com/mozilla/geckodriver/releases)
[Google Chrome](https://chromedriver.chromium.org/downloads)
[Opera](https://github.com/operasoftware/operachromiumdriver/releases)
[Safari](https://developer.apple.com/documentation/testing_with_webdriver_in_safari)
b. Move this file to /usr/bin/ using *mv geckodriver/usr/bin/*

### Agile and communication tools 
- [Trello board](https://trello.com/b/7xX0VoSb/ascender-turma-02)
- Contact Thomas Vieira or Bruna from Ascender to include you in the official whatsapp group
- Contact Leonardo Alano to include you in the Github repository of the project. 


## Usage

To run all tests type in the command line "robot -d reports/ tests/"
To run specific test file type in the command line "robot -d reports/ tests/example_test.robot"

## How to Contribute

To contribute make sure you:
1. Git Pull from main
2. Create and checkout new branch locally
3. After your contribution, push this branch to remote repo
4. Make a Pull Request to merge with main
5. Another person from the team will review it and merge

We run a weekly Sprint. 

Our meeting schedule is:
MONDAY: Planning and refining of tasks 
TUESDAY: 15 mins Daily meeting
WEDNESDAY: 15 mins Daily meeting
THURSDAY: 15 mins Daily meeting
FRIDAY: Review

## Credits

### Team 
[Christian Hernan Massalei Aguada](https://github.com/ChristianAguada)
[Hector Gonzalez](https://github.com/hcgonzalez)
[Jacques Teixeira](https://github.com/JacquesTeixeira)
[Bruna Gewehr](https://github.com/nenagewehr)
[Thais Duarte Martins da Silva](https://github.com/thaisduartems)
[Leonardo Alano](https://github.com/leoalano)

### Mentors 
[Thomás Vieira] https://github.com/thvieira
[Matheo Gracia Pegoraro] https://github.com/tteurs
  

## License

MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.