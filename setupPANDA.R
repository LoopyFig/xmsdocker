# Install xmsPANDA dependencies
install.packages(c("BiocManager","devtools","doParallel"))

# First round of bioconductor packages
BiocManager::install(c("lme4", "plyr", "mvtnorm","RccpEigen"))

# Problem packages, associated with downgraded R version
packageurl <- "https://cran.r-project.org/src/contrib/Archive/pbkrtest/pbkrtest_0.4-4.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
packageurl <- "https://cran.r-project.org/src/contrib/Archive/randomForest/randomForest_4.6-14.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
install.packages(c("estimability","numDeriv"))
packageurl <- "https://cran.r-project.org/src/contrib/Archive/emmeans/emmeans_1.4.5.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
packageurl <- "https://cran.r-project.org/src/contrib/Archive/ranger/ranger_0.12.1.tar.gz" # newest version has c compliler dependencies
install.packages(packageurl, repos=NULL, type="source")

# Working Bioconductor packages
BiocManager::install(c("mzR", "rgl", "gbm", "snow", "e1071", "ROCR", "ROCS", "qvalue", "CMA", "limma", "GO.db", "Boruta", "V8", "lsmeans", "car", "impute", "ggpubr", "mixOmics", "raster"))

# Install xmsPANDA
library("devtools")
install_github("kuppal2/xmsPANDA")

install.packages(c("DT", "plotly", "R-utils"))
