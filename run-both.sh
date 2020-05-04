#!/usr/bin/env bash

Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/Applications/RStudio.app/Contents/MacOS/pandoc') ; rmarkdown::render('log-analysis.Rmd')"
Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/Applications/RStudio.app/Contents/MacOS/pandoc') ; rmarkdown::render('log-change-analysis.Rmd')"
