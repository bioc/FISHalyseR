\name{computeIlluminationCorrection}
\alias{computeIlluminationCorrection}

\title{
Multidimensional Illumination Correction
}

\description{
Function to compute the multidimensional illumination correction (MDIC) using a stack of images
}

\usage{
computeIlluminationCorrection(Images,pattern='*',AmountOfFiles=6)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Images}{Directory containing the images}
  \item{pattern}{Filenames have to match the pattern specified here}
  \item{AmountOfFiles}{Limit the amount of files used to compute the illumination gradient}
}

\value{
\item{computeIlluminationCorrection}{return the image containing the illumination background}
}

\author{ Andreas Heindl }


\examples{

illuCorrection = dirname(system.file( "extdata", "SampleFISHillu.jpg", package="FISHalyseR"))
% I1 <- computeIlluminationCorrection(illuCorrection,pattern='SampleFISHillu.jpg',1)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

\keyword{ misc }