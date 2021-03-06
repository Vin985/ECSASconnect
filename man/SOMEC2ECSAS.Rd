\name{SOMEC2ECSAS}
\alias{SOMEC2ECSAS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Export QC data to the ECSAS database.
}
\description{
Creates a .csv file used for exporting the data from the QC SOMEC database to the ECSAS database.
}
\usage{
SOMEC2ECSAS(input = "SOMEC.accdb", output = "ECSASexport.csv",
            date = "2014-01-01", step = "5 min", spNA = TRUE, excludeCruises = NULL,
            typeSaisie = "ordi", inTransect = TRUE, saveErrors = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{input}{Name and path to the Access Quebec SOMEC database.}
  \item{output}{Name and path of the export .csv file created.}
  \item{date}{Cut off date after which the data should be extracted (character, format: "yyyy-mm-dd").}
  \item{step}{Length of bouts in minutes to cut or join the transects into (default: "5 min"). Original QC data is cut in 1 minute bouts. See the by argument of \code{\link{seq.POSIXt}} for details on how to specify a value.}
  \item{spNA}{Species codes without matches will be turned to NAs or left with their codes.}
  \item{excludeCruises}{Character vector with cruises ids to exclude.}
  \item{typeSaisie}{Character vector to subset the way data was collected. Defaults to "ordi" - only data collected on computer will be returned.}
  \item{inTransect}{Should only data in transect be returned?}
  \item{saveErrors}{Log problems with transects encountered during extraction.}
%%     ~~Describe \code{x} here~~
}
\details{
%%  ~~ If necessary, more details than the description above ~~
If output, date, excludeCruises or typeSaisie are NULL, the corresponding options will be ignored.
}
\value{
A .csv file written at the given location.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Francois Rousseu
}
\note{
}
\seealso{
\code{\link{data2SOMEC}}
}
\examples{
}

