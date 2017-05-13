#' dps
#'
#' example data set simulated according to example 2 in Schaarschmidt et al. (submitted)
#' 
#' 120 specimens (una,mbiguously distinguished by the variable sampleID)
#' 
#' technical replications invlove 3 days, 6 plates within each day
#' the combination of the variables day and plate provides a unique ID variable of the technical 'plate'
#' variable sampletype distinguishes negative controls ('NC'), unspiked biological specimens ('untreated'), spiked biological specimens ('treated'), and positive controls
#' 
#' normalize: log-transform and substract mean
#' model structure: days crossed with biological samples (ignoring plate effect within day)
#'
#' @format A data frame with seven variables: \code{X1}, \code{day},
#'   \code{plate}, \code{sampletype}, \code{sampleID}, \code{gender}, and \code{result}.
"dps"


#' example1
#'
#' Very few responders
#' 
#' 40 biological samples (distinguished in variable subjectID) are analyzed at each of 3 days and on each of 3 plates per day
#' variable treatment distinguishes negative controls ('negcontrol') from biological samples ('sample')
#' there are 4 obs. of a negative control within each plate 
#' 
#' normalize: log-transform and substract mean
#' model structure: runs crossed with biological samples.
#' when running a model with many parameters (random effects and residual variance different between subgroups), a simple model with 1 component is better than a 2-component mixture
#' when running a mixture model with random effects and residual variance assumed equal in both subgroups, a 2-component mixture is better than a simple model with 1 component
#' 
#' irrespective of the model choice, the same 2 individuals are classified as responders in the 2-component mixture
#'
#' @format A data frame with five variables: \code{result}, \code{analyst},
#'   \code{plate}, \code{subjectID}, and \code{treatment}.
"example1"

#' example2
#'
#' roughly 50% responders
#' 
#' 20 animals, variable animal is a unique ID of 20 biological samples, variable sex is in the data but is not needed to clearly distinguish individuals
#' 
#' each of 3 analyst analyzed each animal using each of 3 devices, i.e., animals are crossed with analyst and with device
#' device uniquely identifies a single technical run across all analysts (chosing both, analyst and device, or only device as technical variable has the same result on normalization and model structure)
#' 
#' normalize: log-transform and substract mean
#' model structure: runs crossed with biological samples
#' 
#' irrespective of model choice (equal or different variance components): 11 individuals are classified as responders, 9 as non-responders
#' given log-transformation in the normalization step, there is no deviation from normality in the non-responder subgroup
#'
#' @format A data frame with six variables: \code{measurement}, \code{treatment},
#'   \code{animal}, \code{sex} \code{analyst}, and \code{device}.
"example2"

#' example3
#'
#' design only analyzable under considerable simplifications
#' 
#' biological samples: 30 patients
#' furrther structures: 2 analysts, 4 days, within each day: 3 plates (i.e., within each analyst: 6 plates)
#' 15 patients are only analysed at days 1 and 2, by analyst 1
#' the remaining 15 patients are only analysed at days 3 and 4, by analyst 2  
#' patients are nested within analysts and crossed with days within analyst and crossed with plates within analyst
#' plates are nested in analysts and days
#' 
#' this is one of many possible examples where the experimental structure can not be adequately represented in mixADA
#' 
#' - samples (patients) are not crossed with any of analyst, day, plate
#' - when using only analyst as run, and specifiying model structure as 'samples nested in runs': the three potential effects day, plate, residual are all analysed as residual error, which might be an inadequate simplification
#' - when averaging over replications within patient and analysing the 30 patient averages: variance of single observations due to analysts, days, plates and residuals is ignored, what might be inadequate as well
#'
#' @format A data frame with six variables: \code{value}, \code{day},
#'   \code{plate}, \code{patient} \code{treatment}, and \code{analyst}.
"example3"

#' example4
#' 
#' spiked and unspiked: illustrating CCP estimation
#' 
#' ID: unique identifcator of 40 individual biological samples
#' run: Unique ID of 6 technical runs (i.e., NOT representing 96 well plates)
#' for each ID there are 2 unspiked and 2 spiked replications at each run
#' 
#' sampleType: distinguishes negative controls ('NC'), 'spiked' and 'unspiked' observations
#' 
#' Note: variable ID has exactly the same values for spiked and unspiked observations obtained from the same biological sample
#' 
#' normalization: log-transform
#' model structure: ID crossed with run
#' 
#' irrespective of different choices of variance components: 18 responders, 22 non-responders
#' 
#' after log-transformation: no deviatuion from normality in the non-responder subgroup
#' 
#' for CCP estimation: choose sampleType=unspiked in the normalization / SCP part
#' and sampleType = spiked in the CCP part
#' 
#' @format A data frame with four variables: \code{result}, \code{run},
#'   \code{ID}, and \code{sampleType}.
"example4"

#' example5
#' 
#' spiked and unspiked samples, illustrating CCP estimation
#' 
#' ID: 40 biological samples
#' run: 6 replications (not representing 96 well plates)
#' each ID is present in each run, with 2 unspiked and 2 spiked observations.
#' 
#' sampleType: distinguishes negative controls ('NC'), 'spiked' and 'unspiked' biological samples
#' model structure: ID crossed with run
#' 
#' - 12 responders
#' - 28 nonresponders
#' 
#' for CCP estimation: choose sampleType=unspiked in the normalization / SCP part
#' and sampleType = spiked in the CCP part
#' 
#' @format A data frame with four variables: \code{result}, \code{run},
#'   \code{ID}, and \code{sampleType}.
"example5"


#' Kubiak2013A1long
#' 
#' Simulated data according to a data set published by Kubiak et al. (2013)
#' 
#' 50 biological specimens, variable ID unambiguously identifies these specimens
#' 
#' each specimen analysed on each of 4 plates
#' 
#' data are already normalized
#' 
#' model structure: runs crossed with biological samples
#' 
#' Data are simulated such that summary statistics and relevant estimates are close to 
#' those that could be obtained by fittingb the data set published by Kubiak, R.J., 
#' Zhang, L.J., Zhang, J.C., Zhu, Y., Lee, N., Weichold, F.F., Yang, H., Abraham, V., 
#' Akufongwe, P.F., Hewitt, L., Robinson, S., Liu, W.Y., Liu, X., Patnaik, M.M., 
#' Spitz, S., Wu, Y.L., and Roskos, L.K., 2013. Correlation of screening and confirmatory 
#' results in tiered immunogenicity testing by solution-phase bridging assays. J. Pharm. 
#' Biomed. Anal. 74, 235?245, Table A1 of the Appendix.
#' 
#' @format A data frame with five variables: \code{X1}, \code{study},
#'   \code{plate}, \code{ID} and \code{value}.
"Kubiak2013A1long"

