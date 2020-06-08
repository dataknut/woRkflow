# git branches - why and how

## why

You will have seen that git/github/gitlab repos have a `master` code base. You should think of this as your 'quality code'. Is is very bad practice to work directly on your master codebase because you could break it (for everyone).

Instead you should work inside a 'branch' of the code and when you have finished the code in the branch you should merge it back in via a pull request. That pull request is an opportunity for you and your team to quality-check or test your work _before_ merging it.

For this reason branches should be small small things that fix or make a specific small contribution rather than a huge mass of changes. Once the work is done, merge the branch and start a new branch for a new task. This stops you trying to fix 2 things in 1 branch and then realising you just want to merge 1 of them in to the master.

## how

We have found the best workflow is to 

 * [fork](https://happygitwithr.com/fork-and-clone.html) the original repo to your personal githib/gitlab account. This means you do not need to be a member of the original repo to work on it. It also helps to prevent accidents to the original master.
 * add the original master as an [upstream remote](https://happygitwithr.com/upstream-changes.html)
 * **make a new branch in _your fork_ of the orginal repo**. Do some work, commit it locally.
 * when it works push your branch back up to the *original* repo
 * open a new pull request to merge your branch into the master
 * do your team QA
 * ask the master code maintainer to accept your pull request
 * your code is now in the master
 * delete your branch (to avoid confusion) - this is optional. The point is not to re-use this branch (unless there are errors in it that you need to fix. Your QA should have picked those up!)
 * **make a new branch for your next task**. etc
 
For this and much more read https://happygitwithr.com/