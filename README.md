# IDENTIFIABILITY, REDUCIBILITY, AND EVOLVABILITY IN ALLOSTERIC
MACROMOLECULES

This repository implements all code needed to reproduce the figures of the article.

The main method used to find reduced models is the Manifold Boundary Approximation Method, our implementation of which is in the main folder.

The various MWC models of the BK ion channel and the assays used are found in the BK_functions subfolder.
The script sets up the base parameters and the measurement grid to evaluate over, whereas the notebook contains the model evaluation functions and the step-by-step reductions found by the MBAM method.

All results are found in the Figures subfolder.
* ```run_MBAM``` runs the MBAM model reductions for both assays and saves the results. This takes a few hours.
* ```run_Simulations``` runs a simulated noisy condition given some base parameters and then fits the available models of choice to the noisy data. This takes around a minute / model / fit.
* The outputs of both are saved in the ```Figures/results``` folder

Finally
* ```figure_data``` generates all the data used throughout the paper and exports them in a CSV format to the ```Figures/CSV``` subfolder.

The ```Figures/latex/figures.tex``` file uses those CSV files to reproduce all the plots exactly.
