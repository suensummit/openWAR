% Generated by roxygen2 (4.0.1): do not edit by hand
\name{exWPct}
\alias{exWPct}
\title{exWPct}
\usage{
exWPct(rs, ra, exponent = 2)
}
\arguments{
\item{rs}{A numeric representing Runs Scored}

\item{ra}{A numeric representing Runs Allowed}

\item{exponent}{A numeric representing the desired exponent}
}
\value{
A value of expected winning percentage
}
\description{
Model for a team's winning percentage
}
\details{
An implementation of Bill James's Pythagorean formula for a team's
expected winning percentage as a function of their runs scored and runs
allowed.
}
\examples{
# For a .500 team
exWPct(750, 750)
# Find the partial derivatives
require(mosaic)
slope.rs = D(exWPct(rs, ra, exponent = 1.83) ~ rs)
slope.ra = D(exWPct(rs, ra, exponent = 1.83) ~ ra)
# How many wins is one run in a 700 run environment?
runsPerWin = makeFun(1 / (162 * slope.rs(r, r)) ~ r)
runsPerWin(700)
# In what run environment is 10 runs equal to 1 win?
runsPerWin(742)
# Plot Runs per Win
plotFun(runsPerWin(r) ~ r, r.lim = c(300, 1200)
, xlab = "Runs Environment per 162 games"
, ylab = "Runs per Win")
}

