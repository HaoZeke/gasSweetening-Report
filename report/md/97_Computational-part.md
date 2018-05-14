\part{Computational Analysis}

# Heat Exchanger Rating
For our given system and the well commented code in the Appendix, we used the
data as given in @fig:mdeaSteamDat.

![Data File Input](img/mdeaSteamDat.png){#fig:mdeaSteamDat}

* We note that as expected the Reynolds number is laminar, the heat transfer
coefficient is obviously a much cleaner and closer approximation to the true
value of the system.

The code is adapted from @Coker1995HT with modifications in the form of the
correlation for long tubes.
 
The formatted output produced by the program is given in @fig:mdeaSteamOutput

![Program Output](img/mdeaSteamOutput.png){#fig:mdeaSteamOutput}

# Project Profitability

We have here presented the project profitability of suitably scaled financial
data with judicial factors and assumptions to showcase the generalized
technique of our program.


Here we compare the profitability of the sweetening plant in terms of its cash
flow based on the natural gas produced and sold, along with an alternate
hypothetical situation of the same amount of money being given over to the
production and refining of a close competitor, LPG.

The data is taken from ONGC's annual report $(2016-2017)$ and covers scaled
economic data for $6$ years.

* We have compared natural gas and LPG, with LPG data being multiplied by $6.9$
  to get initial values
* The payback period is within the year for both of these as they are of plants
  in operation


The LPG input file is given in @fig:lpgEcoIn and the input file for natural gas
is @fig:natGasEcoIn.

![Input for LPG](img/lpgEcoIn.png){#fig:lpgEcoIn}

![Input for natural gas](img/natGasEcoIn.png){#fig:natGasEcoIn}

The output files are shown in @fig:natGasEcoOut and @fig:lpgEcoOut.

![Output for LPG](img/lpgEcoOut.png){#fig:lpgEcoOut}

![Output for natural gas](img/natGasEcoOut.png){#fig:natGasEcoOut}

From the data above we assert that given our assumptions and conditions, that
LPG is more profitable than natural gas.

* However this does not take into account the diseconomies of scale faced by
natural gas production as well as the more stringent environmental regulations
on it. 
* Additionally it may be physically unfeasible to produce the same amount
of cash equivalence in real life due to scarcity of resources.
