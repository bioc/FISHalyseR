\name{calculateThreshold}
\alias{calculateThreshold}

\title{
Compute threshold using Otsu's method
}
\description{
Computes the binary image of a grayscale image by using Otsu thresholding
}
\usage{
calculateThreshold(Image)
}

\arguments{
  \item{Image}{grayscale image}
}
\details{The function computes a binary image using Otsu's method.}
\value{
calculateThreshold returns the threshold value
}
\references{
Nobuyuki Otsu: A threshold selection method from grey level histograms. In: IEEE Transactions on Systems, Man, and Cybernetics. New York 9.1979, S.62-66. ISSN 1083-4419}

\author{Karesh Arunakirinathan}

\seealso{calculateMaxEntropy}

\examples{
f = system.file( "extdata", "SampleFISHgray.jpg", package="FISHalyseR")
img = readImage(f)

t = calculateThreshold(img)

##Threshold image using the value computed via Otsu's method
img[img<t] <- 0
img[img>=t] <- 1

}

\keyword{ misc }
