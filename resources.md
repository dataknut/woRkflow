## 'How to' resources:

 * excellent [guidance for collaborative project teams (especially team leads)](https://opensource.guide/) even if they're not open and not R
 * [What they forgot to teach you](https://rstats.wtf/) about R including some required reading:
    * why you should use here::here() and **not setwd()** to make sure your code works _anywhere_
    * why you should use (RStudio) p/Projects to _manage your code_
    * how you should name data files to _stay sane_
    * why you should not add anything to .Renviron or Rprofile unless you want to _irritate team members_
    * and much more, although:
        *  we don't agree with [keeping your data in your project](https://rstats.wtf/project-oriented-workflow.html#work-in-a-project). Data should be somewhere else, _unless you're a .gitignore wizard_ and your data is small (and non-sensitive/non-commercial/public etc)
 * using [git(hub/lab)](https://happygitwithr.com/) for version control (perhaps via [usethis](https://usethis.r-lib.org/) and knowing about [ohshitgit](https://ohshitgit.com/) just in case)
 * using [git branches](https://twrushby.wordpress.com/2017/03/27/collaboration-with-rstudio-and-git-using-branches/) as a way for different people to work on the same project without clashing - [ohshitgit](https://ohshitgit.com/) may be required here too
 * using [git(hub/lab) issues](https://guides.github.com/features/issues/) as a way to manage your project
 * how to use [drake](https://docs.ropensci.org/drake/) to massively speed up and [manage your workflow](https://milesmcbain.xyz/the-drake-post/). This includes always:
    * loading and processing all your data inside a drake plan in a .R file. _So it only gets re-run if the code or data changes_
    * creating each of your output objects inside the drake plan. _So they only get re-created if the code or data changes_
    * rendering your .Rmd report at the end of the drake plan. _So you can pass the params in and report the output objects_
    * => the first time you run the plan it will build everything. The second time, e.g. after you fix a .Rmd typo, _only the bits that have changed get re-built_.
 