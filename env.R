# parameters widely re-used across the repo
# here's why a project level .Rprofile should not be used for this job https://support.rstudio.com/hc/en-us/articles/360047157094-Managing-R-with-Rprofile-Renviron-Rprofile-site-Renviron-site-rsession-conf-and-repos-conf

repoParams <- list() # params holder as a list. Sooooo much easier with tab complete
listFiles <- TRUE

# Location ----
# attempt to guess the platform & user
repoParams$info <- Sys.info()
repoParams$sysname <- repoParams$info[[1]]
repoParams$nodename <- repoParams$info[[4]]
repoParams$login <- repoParams$info[[6]]
repoParams$user <- repoParams$info[[7]]

# use this guess to set a data path
# default
dPath <- "unkown - fix your code!"
if (repoParams$nodename == "srv02405") {
  # we're on the UoS RStudio server so we can set the data path to J: (as mounted)
  dPath <- path.expand("/mnt/SERG_data/")
}

message("You're ", repoParams$user, " using " , repoParams$sysname, " on ", repoParams$nodename)
message("Default dPath has been set to: ", dPath)
if (listFiles) { # optional
  message("and these are the files/folders in that dPath")
  try(list.files(dPath)) # in case it breaks
}
message("Hopefully that's what you expected...")