% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/splitTS.r
\docType{data}
\name{splitTS}
\alias{splitTS}
\title{Split Time Series in Differents Intervals of Year}
\usage{
splitTS(fileTS = NULL, yearStart = NULL, yearEnd = NULL, 
nameColumnDate = NULL, typeInterval = c("annual","cropYear","myInterval"),
sameYear = TRUE, monthStart = 01, monthEnd = 12)
}
\arguments{
\item{fileTS}{A file time series}

\item{yearStart}{A number integer of the year which starts time series, i.e, 2001}

\item{yearEnd}{A number integer of the year which ends time series, i.e, 2005}

\item{nameColumnDate}{A name of column with value of date in data.frame}

\item{typeInterval}{type of interval to split time series. Three types can be choose: "annual","cropYear"or "myInterval". Option annual data.frame will be separeted in data.frames by year, with time series from January until December, 12 months. Option cropYear, data.frame will be divided from July of a year until June of the nex year, with 12 months. And myInterval, user should choose the interval that split data.frame, for example, April until September, with 7 months, the same year or considering differents year, with 17 months. Default is annual.}

\item{sameYear}{TRUE/FALSE for define if data.frame will be split in year equals or not. Default is TRUE}

\item{monthStart}{A number integer defining the month starts to split, only if typeInterval is choose. Default is 1, January.}

\item{monthEnd}{A number integer defining the month ends to split, only if typeInterval is choose. Default is 12, December.}
}
\value{
new dataset of data.frame with divided by interval
}
\description{
Return a new data.frame with values of time series separeted for year, agricultural year ou interval defined by user.
}
\examples{
\dontrun{
# open a data example
library(featuresTS)
data("dataTS")
df <- dataTS

# split data.frame df with typeInterval = annual in the same year
splitTS(df,2002,2005,"date",typeInterval = "annual")
# result in four new data.frames: ts.annual_2002, ts.annual_2003, ts.annual_2004
# and ts.annual_2005, with 12 months each

# split data.frame df with typeInterval = cropYear, by different years
splitTS(df,2002,2005,"date",typeInterval = "cropYear")
# result in three new data.frames: ts.crop.year_2002_2003, ts.crop.year_2003_2004 and
# ts.crop.year_2004_2005, with 12 months each

# split data.frame df with typeInterval = myInterval, but option sameYear = FALSE
splitTS(df,2002,2005,"date",typeInterval = "myInterval",
sameYear = FALSE, monthStart = 08, monthEnd = 03)
# result in three new data.frames: ts.myInterval_2002_2003, ts.myInterval_2003_2004 and
# ts.myInterval_2004_2005, with 8 months

# split data.frame df with typeInterval = myInterval, but option sameYear = FALSE
splitTS(df,2002,2005,"date",typeInterval = "myInterval",
sameYear = FALSE, monthStart = 08, monthEnd = 03)
# result in four new data.frames: ts.myInterval_2002,  ts.myInterval_2003, ts.myInterval_2004 and
# ts.myInterval_2005, with 5 months

}

}
\author{
Adeline M. Maciel
}
\keyword{datasets}
