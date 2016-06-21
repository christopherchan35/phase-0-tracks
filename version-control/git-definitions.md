# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control is having multiple instances of your files, each from a different part of its life cycle. It is useful because a user is able to rollback to an older commit if there is a bug in the newest version and also many users are able to contribute to code instead of one user at a time.
* What is a branch and why would you use one?
    - A branch is an independent piece of code that is usually merged back into master when the changes made are finished. You never want to make changes to the master branch because they should always be working, so instead changes should be made on different branches and merged in after a review via pull request.
* What is a commit? What makes a good commit message?
    - A commit is an instance of that file that is saved in time. A user is able to rollback to any commit. A good commit message is that one specifies what changes were made and to which files, the more specific the better.
* What is a merge conflict?
    - A merge conflict is when 2 or more users edit files and try to merge back together but they have different code on the same lines. I've seen tutorials where they manually change their code to solve the merge conflict but for now I am unsure if there are better ways to solve them.
