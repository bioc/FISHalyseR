\name{processFISH}
\alias{processFISH}
\title{
      FISHalyseR - Automated fluorescence in situ hybridisation quantification in R
}

\description{
Function to automatically quantify FISH probes in cell-culture images.
}

\usage{
processFISH(combinedImg, writedir, bgCorrMethod = list(1, 100),channelSignals = NULL,
            channelColours = NULL, sizeNucleus = c(5, 15000), sizeProbe = c(5, 100), 
            gaussigma = 20, outputImageFormat = ".png")
}

\arguments{
  \item{combinedImg}{Composite image of all available channels }
  \item{writedir}{Traget directory for output files}
  \item{bgCorrMethod}{Specifies the method used to correct for uneven background. Accepts only list types. Currently, four different methods are available: (1) Gaussian blurring, (2) Illumination correction image provided by the user, (3) multidimensional illumination correction (using a stack of images). In case no illumination correction should be applied, pass an empty list to the function}
  \item{channelSignals}{List of images containing the FISH probe }
  \item{channelColours}{List of colour vectors for each single channel}
  \item{sizeNucleus}{Minimum and maximum area (in pixel) of probes to be consided for further analysis}
  \item{sizeProbe}{Minimum and maximum area (in pixel) of probes to be considered for further analysis}
  \item{gaussigma}{Sigma of Gaussian used to blur the image}
  \item{outputImageFormat}{File format for the output image}
}


\value{
\item{processFISH}{ does not return any value}
}

\author{ Karesh Arunakirinathan, Andreas Heindl}

\seealso{
      computeIlluminationCorrection, analyseParticles
}

\examples{

## Specify illumination correction image
illuCorrection = system.file( "extdata", "SampleFISHillu.jpg", package="FISHalyseR")

## Composite image containing available channels
combinedImage <- system.file( "extdata", "SampleFISH.jpg", package="FISHalyseR")

## Single FISH channels containing the probe signals
red_Og   <- system.file( "extdata", "SampleFISH_R.jpg", package="FISHalyseR")
green_Gn <- system.file( "extdata", "SampleFISH_G.jpg", package="FISHalyseR")

## Output directory
writedir = paste(tempdir(),sep='')


## Use provided illumination correction image
bgCorrMethod = list(2,illuCorrection)

## Colour vector for three different probe channels (red, green and blue)
channelColours = list(R=c(255,0,0),G=c(0,255,0))

## Add probe channels to list
channelSignals = list(red_Og,green_Gn)

## Minimum and maximum area allowed for nuclei respectively probes
sizecell = c(1000,20000)
sizeprobe= c(5,20)

## Call processFISH with the specified parameters
processFISH(combinedImage,writedir,bgCorrMethod,channelSignals,
            channelColours,sizecell,sizeprobe)

}



% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
