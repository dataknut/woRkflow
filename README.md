# woRkflow

How we do collaborative reproducible data analysis and reporting. Mostly (but not only) using R.

Useful resources:

 * excellent [guidance for collaborative project teams (team leads)](https://opensource.guide/) even if they're not open and not R
 * [What they forgot to teach you](https://rstats.wtf/) about R including some required reading:
    * why you should use here::here() to make sure you code works _anywhere_
    * why you should use (RStudio) p/Projects to _manage your work(life)_
    * how you should name data files to _stay sane_
    * why you should not add anything to .Renviron or Rprofile to avoid _irritating team members_
    * and much more, although:
        *  we don't agree with [keeping your data in your project](https://rstats.wtf/project-oriented-workflow.html#work-in-a-project). Data should be somewhere else, _unless you're a .gitignore wizard_ and your data is small (and non-sensitive/non-commercial/public etc)
 * using git(hub) and version control (but knowing that [ohshitgit](https://ohshitgit.com/) exists)
 * how to use [drake](https://docs.ropensci.org/drake/) to massively speed up and [manage your workflow](https://milesmcbain.xyz/the-drake-post/)
 

