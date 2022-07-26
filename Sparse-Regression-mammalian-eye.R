installed_flag = F
# I turn installed_flag = F so it wont  the package every time you run the R codes 
# as mentioned in the project description 
if(installed_flag == F){
  if(!require(remotes)){
    install.packages("remotes", dependencies = TRUE, repos = 'http://cran.rstudio.com')
  }
  remotes::install_github("pbreheny/hdrm")
}
library(hdrm)
downloadData(Scheetz2006)
attachData(Scheetz2006)

n = nrow(X)
# Split data into train and test sets
train_rows <- sample(1:n, n/2)
X.train <- X[train_rows, ]
X.test <- X[-train_rows, ]

y.train <- y[train_rows]
y.test <- y[-train_rows]

dim(X.train)
