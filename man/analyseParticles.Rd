\name{analyseParticles}
\alias{analyseParticles}
\title{
Analyse 
}
\description{
Cleans a given binary image according to area criteria specified by the user.
}
\usage{
analyseParticles(Image,MaxSize,MinSize, isMask)
}
\arguments{
  \item{Image}{Binary image}
  \item{MaxSize}{Maximum area allowed for objects}
  \item{MinSize}{Minimum area allowed for objects}
  \item{isMask}{In case isMask=1, the function assumes that the binary images contains nuclei.
                Nuclei with an area smaller than MaxSize and greater than MinSize will be
                removed. If isMask=0, the function assumes that the binary images contains
                probes and subsequently probes with an area smaller than MinSize or larger than
                MaxSize are removed} 
}
\value{
Returns a labeled image
}

\author{ Karesh Arunakirinathan }

\examples{
f = system.file( "extdata", "SampleFISHgray.jpg", package="FISHalyseR")
img = readImage(f)

anaImg <- analyseParticles(img, 20000, 1000,0)
## anaImg contains now the cleaned-up image

}

\keyword{ misc, bwlabel }
