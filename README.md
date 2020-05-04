# covid-data-analysis

Some quick and dirty graphs for the US and for Washington by county, using the data published by NYT repository
(https://github.com/nytimes/covid-19-data)

Main idea is to compare states at once, as well as counties in the state of Washington.
For this, I used
* a simple linear count to see how they compare;
* a log(2) count to see what the doubling rate was like

Run from inside RStudio or from command line.
You'll need to know where `pandoc` is on your system to run from command line.
From RStudio console execute `Sys.getenv("RSTUDIO_PANDOC")`
On my MacOS system:
` Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/Applications/RStudio.app/Contents/MacOS/pandoc') ; rmarkdown::render('log-analysis.Rmd')"`
and
`Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/Applications/RStudio.app/Contents/MacOS/pandoc') ; rmarkdown::render('log-change-analysis.Rmd')"`

You could probably export the ENV variable as well. Or maybe I can add it to the script. we'll see.
