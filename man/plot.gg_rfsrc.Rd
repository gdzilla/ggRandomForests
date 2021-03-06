% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.gg_rfsrc.R
\name{plot.gg_rfsrc}
\alias{plot.gg_rfsrc}
\title{Predicted response plot from a \code{\link{gg_rfsrc}} object.}
\usage{
\method{plot}{gg_rfsrc}(x, ...)
}
\arguments{
\item{x}{\code{\link{gg_rfsrc}} object created from a \code{\link[randomForestSRC]{rfsrc}} object}

\item{...}{arguments passed to \code{\link{gg_rfsrc}}.}
}
\value{
\code{ggplot} object
}
\description{
Plot the predicted response from a \code{\link{gg_rfsrc}} object, the 
\code{\link[randomForestSRC]{rfsrc}} prediction, using the OOB prediction from the forest.
}
\examples{
\dontrun{
## ------------------------------------------------------------
## classification example
## ------------------------------------------------------------
## -------- iris data
# rfsrc_iris <- rfsrc(Species ~ ., data = iris)
data(rfsrc_iris, package="ggRandomForests")
gg_dta<- gg_rfsrc(rfsrc_iris)

plot(gg_dta)

## ------------------------------------------------------------
## Regression example
## ------------------------------------------------------------
## -------- air quality data
# rfsrc_airq <- rfsrc(Ozone ~ ., data = airquality, na.action = "na.impute")
data(rfsrc_airq, package="ggRandomForests")
gg_dta<- gg_rfsrc(rfsrc_airq)

plot(gg_dta)

## -------- Boston data
data(rfsrc_Boston, package="ggRandomForests")
plot(rfsrc_Boston) 

## -------- mtcars data
data(rfsrc_mtcars, package="ggRandomForests")
gg_dta<- gg_rfsrc(rfsrc_mtcars)

plot(gg_dta)

## ------------------------------------------------------------
## Survival example
## ------------------------------------------------------------
## -------- veteran data
## randomized trial of two treatment regimens for lung cancer
# data(veteran, package = "randomForestSRC")
# rfsrc_veteran <- rfsrc(Surv(time, status) ~ ., data = veteran, ntree = 100)
data(rfsrc_veteran, package = "ggRandomForests")
gg_dta <- gg_rfsrc(rfsrc_veteran)
plot(gg_dta)

gg_dta <- gg_rfsrc(rfsrc_veteran, conf.int=.95)
plot(gg_dta)

gg_dta <- gg_rfsrc(rfsrc_veteran, by="trt")
plot(gg_dta)

## -------- pbc data
data(rfsrc_pbc, package = "ggRandomForests")
gg_dta <- gg_rfsrc(rfsrc_pbc)
plot(gg_dta)

gg_dta <- gg_rfsrc(rfsrc_pbc, conf.int=.95)
plot(gg_dta)

gg_dta <- gg_rfsrc(rfsrc_pbc, by="treatment")
plot(gg_dta)


}
}
\references{
Breiman L. (2001). Random forests, Machine Learning, 45:5-32.

Ishwaran H. and Kogalur U.B. (2007). Random survival forests for 
R, Rnews, 7(2):25-31.

Ishwaran H. and Kogalur U.B. (2013). Random Forests for Survival, Regression 
and Classification (RF-SRC), R package version 1.4.
}
\seealso{
\code{\link{gg_rfsrc}} \code{\link[randomForestSRC]{rfsrc}}
}
