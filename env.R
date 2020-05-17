# parameters widely re-used across the repo
# here's why a project level .Rprofile should not be used for this job https://support.rstudio.com/hc/en-us/articles/360047157094-Managing-R-with-Rprofile-Renviron-Rprofile-site-Renviron-site-rsession-conf-and-repos-conf

repoParams <- list() # params holder as a list. Sooooo much easier with tab complete

# Location ----
# attempt to guess the platform & user
repoParams$info <- Sys.info()
repoParams$sysname <- repoParams$info[[1]]
repoParams$nodename <- repoParams$info[[4]]
repoParams$login <- repoParams$info[[6]]
repoParams$user <- repoParams$info[[7]]

message("You're ", repoParams$user, " using " , repoParams$sysname, " on ", repoParams$nodename)
message("Hopefully that's what you expected...")