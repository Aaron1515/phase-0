How does tracking and adding changes make developers' lives easier?

It make is easy by tracking and going back to where things should or need to make changes at. You can compare changes if 2 people or more is doing the change.

What is a commit?

A commit is done after you have made all the changes on the working directory and added the change to the staging area.Commit is when you are done adding things to the staging area and satisfy with you change.  You commit the actual changes.

What are the best practices for commit messages?

Best practice is leave good notes to be able to go back later and be able to understand it and see what changes you made during that commit.

What does the HEAD^ argument mean?

HEAD^ means the last thing you are working on.  There are also many different heads as well.  Such as Head-2, Head-3 and so on.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The 3 stages of git is; The working directory, Staging area, and Git Directory.  The working directory is the directory you're working on.  This is where you make changes to you files and adding images to.  The 2nd one is the staging area where you use the "git add" command to add the file(s) to.  You are getting it ready for a commit.  The 3rd and last stage is a commit, this is where you will be commiting the change to your repo.

Write a handy cheatsheet of the commands you need to commit your changes?

git commit -m "put it in here" (If you have a short comment)
git commit -v (If I have a much long comment I need explaing)

What is a pull request and how do you create and merge one?

A get pull request is two different things put into 1 command.  First it does a fetch and merge when you are doing a git pull.  What it it really does is it fetch the repo and merge it with the current one you're on.  To create is create a pull request you will type "git pull origin master" or you can also do a "git fetch origin master" and "git merge origin master"

Why are pull requests preferred when working with teams?

Pull request is preferred is because it will pull down the current repo and merge it with your working repo.  There for you will not have a merge conflict at a later time.  With a pull request, you can also correct push conflicts.