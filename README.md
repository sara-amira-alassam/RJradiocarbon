# RJradiocarbon
Radiocarbon Calibration Of Multiple 14C Samples Using Reversible Jump Poisson Process

This project consider the calibration of multiple radiocarbon samples. The (calendar) rate at which samples occur is modelled as a poisson process with a variable rate lambda.

This rate lambda is modelled as a piecewise constant function with an uninown number of changepoints. We then use reversible jump MCMC (RJMCMC) to alternate between calibrating the samples and updating the estimate of the underlying rate lambda. 

