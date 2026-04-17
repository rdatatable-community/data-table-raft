pkgs <- c("mlr3verse","fastverse","ranger","tidyfast","dtplyr")
ins.mat <- installed.packages()
missing.pkgs <- setdiff(pkgs, rownames(ins.mat))
install.packages(missing.pkgs)
unlink("docs", recursive = TRUE)
quarto::quarto_render()

