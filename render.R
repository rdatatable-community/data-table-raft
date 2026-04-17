pkgs <- c("mlr3verse","fastverse","ranger","tidyfast","dtplyr","data.table", "magrittr", "palmerpenguins", "tidyverse", "knitr", "dplyr", "reshape2", "atime", "ggplot2", "reticulate", "quarto", "kknn", "nc")
ins.mat <- installed.packages()
missing.pkgs <- setdiff(pkgs, rownames(ins.mat))
install.packages(missing.pkgs)
Sys.setenv(NOT_CRAN = "true") # https://pola-rs.github.io/r-polars/
install.packages("polars", repos = "https://community.r-multiverse.org")
unlink("docs", recursive = TRUE)
quarto::quarto_render()

