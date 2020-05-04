#!/usr/bin/env bash

git pull
pushd ../covid-19-data
git pull
popd

Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/Applications/RStudio.app/Contents/MacOS/pandoc') ; rmarkdown::render('quick-analysis.Rmd')"
Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/Applications/RStudio.app/Contents/MacOS/pandoc') ; rmarkdown::render('log-change-analysis.Rmd')"
