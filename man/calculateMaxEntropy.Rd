\name{calculateMaxEntropy}
\alias{calculateMaxEntropy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Max Entropy thresholding}
\description{
The function converts a grayscale image to a binary image by computing a threshold using the Max Entropy method. 
}
\usage{
calculateMaxEntropy(Image)
}
\arguments{
  \item{Image}{grayscale image}
}
\details{
Max Entropy thresholding can be used to detect the signals of probes in FISH cell culture images. 
}
\value{
The function returns the threshold value}
\references{
J.N KANPUR, P.K SHAOO, A.K.C WONG: A New Method for Gray-Level picture thresholding Using the Entropy of the Histogram. In COMPUTER VISION, GRAPHICS AND IMAGE PROCESSING,1985 p 273-285
}
\author{ Karesh Arunakirinathan}

\seealso{
  calculateThreshold
}

\examples{
f = system.file( "extdata", "SampleFISHgray.jpg", package="FISHalyseR")
img = readImage(f)

t = calculateMaxEntropy(img)

## Threshold grayscale image using the value computed by the Max Entropy method
img[img<t] <- 0
img[img>=t] <- 1
}
\keyword{ misc }