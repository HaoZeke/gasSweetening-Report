\part{Process Description}

# Overview
The gas sweetening unit basically consist of two columns viz. absorption
column and stripping column. The other nuances include several valves,
flash drum and preheaters or plate heat exchangers to maintain the
required temperature and pressure in the column.

The overall process is described with the flowsheet in the IPC section.


![MDEA sample unit](img/mdeaTower.png)

# MDEA Process Principles

Methyl-Di-Ethanol-Amine (MDEA) is tertiary amine, which does not
react easily with \ch{CO2}. The selectivity is so prompted by using the
differences in the reaction rates between both \ch{H2S} and \ch{CO2} and
tertiary amine.

-   The selective removal of \ch{H2S} is made by washing the sour gas with an
aqueous solution of Methyl-Di-Ethanol-Amine (MDEA).
- The process principles are similar to the well known SNPA-DEA process.\marginpar{The only difference is the behavior of the ethanol amine used.}


We first investigate the case a primary or secondary amine (mono-ethanolamine or
di-ethanolamine) whose reactions with the acid components \ch{H2S} and
\ch{CO2} are similar.

-   \ch{H2S} reacts to give amine hydrosulfide:

$$\ch{H2S} + \ch{R2NH} \longleftrightarrow \ch{HS^-}, \ch{R2NH^+}$${#eq:one}

\ch{CO2} can react directly with amine to form an amine carbonate:

$$ \ch{CO2} + 2\ch{R2NH} \longleftrightarrow \ch{R2NCOO^-}, \ch{R2NH2^+} $${#eq:two}

But \ch{CO2} can also react with water or hydroxyl ions to form carbonic
acid or bicarbonate ions

$$\ch{CO2} + \ch{H2O} \longleftrightarrow \ch{H2CO3}$${#eq:three}

$$\ch{CO2} + \ch{H2O} \longleftrightarrow \ch{HCO3^-} + \ch{OH^-}$${#eq:four}

These acids then react with the amine to form amine bicarbonate (\ch{H2CO3^-},
\ch{RNH_2^+}) and amine carbonate (\ch{CO2}, $\ch{R2NH2^+}_2$).

From kinetic considerations, three
types of reactions can be distinguished .

* Reaction (@eq:one) whose rate is infinite
* Reaction (@eq:two) whose rate is moderate, depending on the amine
* Reaction (@eq:three) and (@eq:four), known to be slow .

It is known that using MEA or DEA the absorption rate \ch{CO2} in the
absorber may be lower than the absorption rate of \ch{H2S}; however \ch{CO2}
removal is regarded as complete. The case of tertiary amine is
different. As a matter of fact, the molecular structure of the tertiary
amine prevents the direct reaction of \ch{CO2} with carbonate formation
(reaction (@eq:two)).

Contact time depends on:

* The gas flow rate
* The liquid height above the active plant area
* The number of plates in the absorber

The first two parameters cannot be acted upon. The third parameter
(plate quantity) allows adjusting contact time according to the feeding
conditions and required performance.

We show here the average size of a standard unit meant for handling this
substance in @fig:highQualityAmines.

![Real amine processing plant](img/highQualityAmines.png){#fig:highQualityAmines}

# Absorption Section

The absorption section operation is as enumerated below by following along the path taken by the raw gas.

1.  Slug-catcher derived raw gas is heated in steam heater and made to pass through a pressure regulating control valve.
2.  Its temperature is maintained above $25^{\circ}C$ by controlling the heater
steam flow. 
3.  This raw gas is then mixed with the condensate
treating unit derived raw gas, which is made up of light
hydrocarbon fraction in the raw condensate. 
4.  The raw gas mixture then passes through a knock out drum where liquid carryovers (water, hydrocarbon) are retained to be pumped to the condensate treating
unit.
5.  Upon leaving separator raw gas enters an amine absorption column
where it comes into contact counter currently with the aqueous
solution of MDEA.
6.  The absorber column includes 14 valve trays. The
lean MDEA solution at $45^{\circ}C$ at the column upper part.
7.  Different liquid feeds allow the possibility of selecting an adequate
number of the trays to obtain the required results taking into
account about feed gas quality and operating conditions. 
8. The selected feed position could be to the trays 1, 3, 5, 7, or 9 and
the switching over from one to another is done manually.
9. The MDEA feed nozzles are arranged such that the liquid feed is fed
to the down comers of trays (1, 3, 5, 7 and 9) and not the trays
themselves. 
10. The upper tray is dry and retains the major part of
carryovers. 
11. The total lean MDEA solution flows to the column under
flow control valve. 
12.  At the top of absorber, treated gas contains
less than 4 ppm volume of \ch{H2S}. Temperature ranges from $40^{\circ}C$ to
$44^{\circ}C$. The gas is cooled to $38^{\circ}C$ by passing through a water cooler.

# Process Specifications

## Gas Feedstock Specifications

The following mixed gas composition (mixture of slug catcher gas and CFU
off gas ) has been considered for the design of GSU and GDU.

Pressure at battery limits : $96 -- 54 \si{kg/cm^2} abs$

Temperature at battery limits : $20-33^{\circ}C$

Gas sweetening train will have a maximum operating pressure of $77
\si{kg/cm^2}$. A pressure control valve and heating device upstream of the
pressure valve will prevent hydrate formation. \ch{H2S} and \ch{CO2} content will
vary depending on conditions.

## Product Specifications

The product from each Gas Sweetening train will meet the following
specifications :

+------------------------------------------------------------+
| [Sweet and Dry Gas]{.underline}                            |
|                                                            |
| \ch{H2S} content : 4 ppm volume maximum                    |
|                                                            |
| Pressure at battery limits : 74.9 -- 51.9 \si{kg/cm^2} abs |
|                                                            |
| Temperature at battery limits : $40^{\circ}C$              |
|                                                            |
| [Rich MDEA Flash Drum:]{.underline}                        |
+------------------------------------------------------------+

\ch{H2S} content : $4$ ppm volume maximum

Pressure at battery limits : $4.5 \si{kg/cm^2} abs$

Temperature at battery limits : $48-55^{\circ}C$

[Acid Gas: ]{.underline}

Hydrocarbon content will be minimized.

Pressure at Battery Limits : $1.9 \si{kg/cm^2}$

Temperature at Battery Limits : $50^{\circ}C$

## Turn Down Ratio

Overall turn down ratio to 40\% of the design capacity can be obtained
without any special additions to the standard features of the equipment.
With this turn down ratio of 40\%, design sweetening and drying
performances will be maintained, with an increase in the specific energy
consumption.

The main process equipments in Gas Sweetening Unit are:

-   Absorption column.

-   Stripping column.

The main process variable in the absorption and stripping colums are:

-   Temperature.

-   Pressure.

-   Flow Rate.

### Absorption Tower Calculations

* Tray Tower
* Valve Tray
* MDEA solvent
* Low Temperature and High Pressure in absorption column
* High Temperature and Low Temperature in stripping column
* Countercurrent operations

The above operations are elaborated.

