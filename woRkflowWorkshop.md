# The woRkflow Workshop

1 hour (hopefully)

## To do before you come

 * install [RStudio](https://rstudio.com/products/rstudio/)
 * make sure you can log in to [git.soton.ac.uk](git.soton.ac.uk/)
 * check you have an ssh key set up on git.soton for the laptop/PC/server where you are going to use RStudio - see [rstudio's help](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN) or [this one](https://happygitwithr.com/ssh-keys.html)
 * Make sure you have Teams - we will be using the screen sharing a lot

## On the day we will

 * fork the [woRkflow repo](https://git.soton.ac.uk/SERG/workflow) to your personal space on git.soton.ac.uk
 * clone your personal fork of the repo to the laptop/PC/server where you are going to use RStudio 
 * explore the repo to see what is in:
   * .env.R
   * /R
   * /Rmd - what's in:
     *  make_basicReport.R?
     *  basicReport.Rmd?
 * test /Rmd/make_basicReport.R and see why it doesn't work
    * test workflow::setup()
    * test workflow::tidyNum(1234)
 * build the repo as an R package using the RStudio -> Build menu (check build config for roxygen)
 * convince yourself that:
    * workflow::setup() now works
    * workflow::tidyNum(1234) now rowks
 * See if /Rmd/make_basicReport.R works now
 * work through /Rmd/make_basicReport.R and basicReport.Rmd to understand:
   * what drake is doing and how it helps
   * why data.table is really fast
   * why lubridate is so useful for dates and times
   * why you use drake to build stuff and Rmd to report it
   * how to get ggplot2 to make pretty plots
  
 * That's it :-)