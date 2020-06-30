# basic drake makefile

# Libraries ----
library(woRkflow) # remember to build it first :-)
woRkflow::setup() # load env.R set up the default paths etc

reqLibs <- c("data.table", # data munching
             "drake", # what's done stays done
             "here", # here
             "lubridate", # dates and times
             "ggplot2", # plots
             "skimr" # for skim
)
# load them
woRkflow::loadLibraries(reqLibs)

# Parameters ----

# Some data to play with:
# https://data.nationalgrideso.com/carbon-intensity1/historic-generation-mix/r/historic_gb_generation_mix

urlToGet <- "http://data.nationalgrideso.com/backend/dataset/88313ae5-94e4-4ddc-a790-593554d8c6b9/resource/7b41ea4d-cada-491e-8ad6-7b62f6a63193/download/df_fuel_ckan.csv"
update <- "now" # edit this in any way (at all) to get drake to re-load the data from the url
rmdFile <- "basicReport" # <- name of the .Rmd file to run at the end 
title <- "UK Electricity Generation"
subtitle <- "UK ESO grid data"
authors <- "Ben Anderson"

# Functions ----
# for use in drake
getData <- function(f,update){
  # gets the data
  dt <- data.table::fread(f)
  return(dt)
}

makeGWPlot <- function(dt){
  # expects the eso data as a data.table
  # draws a plot
  dt[, rDateTime := lubridate::ymd_hms(DATETIME)] # hurrah, somebody read https://speakerdeck.com/jennybc/how-to-name-files?slide=21
  dt[, weekDay := lubridate::wday(rDateTime, label = TRUE)]
  # draw a megaplot for illustrative purposes
  p <- ggplot2::ggplot(dt, aes(x = rDateTime, 
                               y = GENERATION/1000,
                               colour = weekDay)) +
    geom_point() +
    theme(legend.position = "bottom") +
    labs(x = "Time",
         y = "Generation (GW - mean per halfhour?)",
         caption = "Source: UK Grid ESO (http://data.nationalgrideso.com)")
  return(p)
}

makeReport <- function(f){
  # default = html
  rmarkdown::render(input = paste0(here::here("Rmd", f),".Rmd"), # we love here:here() - it helps us find the .Rmd to use
                    params = list(title = title,
                                  subtitle = subtitle,
                                  authors = authors),
                    output_file = paste0(here::here("docs", f),".html") # where the output goes
  )
}
# Set up ----
startTime <- proc.time()

# Set the drake plan ----
# Clearly this will fail if you do not have internet access...
plan <- drake::drake_plan(
  esoData = getData(urlToGet, update), # returns data as data.table. If you edit update in any way it will reload - drake is watching you!
  skimTable = skimr::skim(esoData), # create a data description table
  gWPlot = makeGWPlot(esoData) # make a plot
)

# Run drake plan ----
plan # test the plan
make(plan) # run the plan, re-loading data if needed

# Run the report ----
# run the report - don't do this inside the drake plan as 
# drake can't seem to track the .rmd file if it is not explicitly named
makeReport(rmdFile)

# Finish off ----

t <- proc.time() - startTime # how long did it take?
elapsed <- t[[3]]

print("Done")
print(paste0("Completed in ", round(elapsed/60,3), " minutes using ",
             R.version.string, " running on ", R.version$platform))