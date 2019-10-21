# InterviewQuestionsRuby
A quick repo to copy and solve some exercises to demonstrate knowledge with ruby

## Usage:
Fork or clone this repo and get it running locally, then solve each of the tasks
listed in this readme.

Feel free to document the journey to the solution either by making small
commits or otherwise documenting your thought process, this will help us
evaluate how you work when not doing a pairing test

Also feel free to submit partial answers and discuss alternatives

When you are done you can submit your reply either by mailing me, or making
a pull request to this repo

Happy Coding!

## Tasks
Each task has a description, some code and some tests.

The 0th task is the exception, as it is just to check you have installed the
dependencies and are ready to run.

For all other tasks you should see:
 * A folder named `/exerciseX/` which includes any starting code.
   This is the code you will be asked to understand and modify
 * A specification in `/spec/` called `/spec/exerciseX.rb` with some test of your
   solution - Feel free to add more cases and to test-drive your code!
 * rake task `rake exerciseX` runs the test for the task

A taks may also have some bonus info to help you get started, and bonus tasks
you can consider if the task itself is too trivial

### 0: Run the test
Day one on you new job, and your first task is to install the dependencies of
the project.

You are not given any instructions other than a git branch that you quickly
check out on your machine. The README file is not a big help either, it just
says that it is a ruby project using bundler, and something about running the
default rake task to get started?

#### Your task:
Successfully run the default rake task by issuing the command `rake`

It should be obvious from the console output wheter the command was a success

### 1: Who broke the password validation?!
After you get set up a tester comes up to you.

He is clearly nervous and saying that a bug was found in UAT.
Apparently passwords are not being validated correctly, which he knew about,
but the tests passed at the time they made the pull request and they were in
a hurry.

Your new friend shows you the bug the customer has created in the ticket system,
and the spec file for the Password class. The tester has already added an
ignored test with the password the user tried to validate getting a false
positive.

#### Your task:
Fix the Password class (exercise1/password.rb) such that all examples from
spec/exercise1\_spec.rb pass and none are ignored

Also consider problems with the spec. How was such a major bug allowed to
sneak in? What could be done to make the spec more robust?

#### Bonus info:
You can ignore or focus any test by putting an x or f in front of any rspec
`describe` or `it`. When you run the test only the focused examples (if any)
will run. If no test are focused all test will be run except those that are
ignored. Use this technique to minimize the noise if you get multiple test
breaking.

#### Bonus points:
 * Consider different approaches to this problem and discuss their advantages.
 * Try making changes to the code in a way where you never have more than 1
   failing or ignored test
 * Make the test more robust against implementations like the original code
 * Consider how the test actually runs the methods :initialize and :valid?
   If we renamed the method valid? how do we fix the test

### 2: Make it go faster
After merging your first pull request and heroicly saving the UAT, a Business
Analyst calls for your attention.

"We have a big issue. This is the most important thing in this sprint" they say.

The BA tells you about a performance problem, where a large number of video
files are being sorted by length. They also point you the team's Ops guy, who
explains the specifics. A benchmark shows that almost all of the time
is spent in third party code calculating the length of the video. This is code
you cannot change in any way, and deals with bit rates, resolution and all
kinds of weird low level magic that frakly you dont have the time or the
interest to sit down and learn right now.

Luckily for you the Ops guy has made a test using a mocked file class that you
can use for this task, including a set time you need to get under for the
performance SLA to be reached.

#### Your task:
Optimize the script `exercise2/file_sorter.rb`
such that it can run fast enough to satisfy the test `spec/exercise2_spec.rb`

#### Bonus info:
Ruby actually has a build in way to optimize this exact problem.
If you use it, please think about how it achieves the faster time compared to
the naïve code in the exercise

#### Bonus points:
 * The current test is also extremely slow. Is there a better way to test this?
 * What is the meanning of line 8-9 in `exercise2/filesorter.rb`
