pkgs <- c("mlr3verse","fastverse","ranger","tidyfast","dtplyr","data.table", "magrittr", "palmerpenguins", "tidyverse", "knitr", "dplyr", "reshape2", "atime", "ggplot2", "reticulate", "quarto")
ins.mat <- installed.packages()
missing.pkgs <- setdiff(pkgs, rownames(ins.mat))
install.packages(missing.pkgs)
unlink("docs", recursive = TRUE)
quarto::quarto_render()

