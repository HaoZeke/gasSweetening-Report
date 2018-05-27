\part{Equipment Design}\label{part:equipDesign}

# Design Scope

We note again the basic layout of our plant in @fig:flowSheet.

![Amine or olamine sweetening from @speight2014chemistry](img/amineProcess.png "Sweetening"){#fig:flowSheet}

More specifically we shall focus on the design parameters of the following:

* Tall Vertical Vessels
    * Absorber
    * Stripper
* Heat Exchangers
    * Shell and Tube Preheaters
    * Plate Heat Exchangers
* Valve Trays
* Centrifugal Pumps

In this section we will determine relevant parameters for the appropriate sizing
in mechanical terms of the equipment. We shall not here note the costs or even
the process optimization. The materials determined here are mainly by
introspection and for longevity.

For each equipment considered in this section we shall extend the theory of
associations and correlations developed before in the literature survey of
\autoref{part:litRev} by demonstrating calculations for the same.

# Mechanical Design of GSU Absorption Tower

## Objective

We will develop here a an estimate of the thickness of the absorption tower used
in the Gas Sweetening Unit based on the theory developed in the previous chapter.

## Calculations

| Variable                        | Value           |
|---------------------------------|-----------------|
| Column Diameter                 | $2.5 \si{\m}$   |
| Column Height                   | $20 \si{\m}$    |
| Valve Trays                     | $14$            |
| Glass Wool Insulation thickness | $70 \si{\mm}$   |
| Operating Pressure              | $60 \si{\bar}$  |
| Joint Efficiency Factor         | $1$             |
| Skirt Support Height            | $2.5  \si{\m}$  |
| Column Material                 | Stainless Steel |
| Material Operating Stress       | $130\si{\bar}$  |
Table: GSU Tower Data. {#tbl:dataTowerGSU}

The data is summarized in @tbl:dataTowerGSU and the material operating stress is
the maximum operating stress under the column conditions.

We will follow an iterative process:

1. Design pressure
2. Minimum thickness
3. Preliminary division of trays
4. Weight estimate of trays
5. Stress estimate and analysis (3. if incorrect)

### Design Pressure

As we know the design pressure is estimated by @eq:mTow1.

$$P_d=1.1 \times P_o $${#eq:mTow1}

Where:

* $P_d$ is the design pressure
* $P_o$ is the operating pressure

Hence we have:

$$P_d=1.1*60=66 \si{\bar}$$

### Minimum Thickness

Our minimum thickness is determined from the column diameter, joint efficiency,
and maximum allowable stress as per @eq:mTow2.

$$t_{min}=\frac{J}{2} \frac{D_c}{P_{max}} $${#eq:mTow2}

Where:

* $t_{min}$ is the minimum thickness
* $J$ is the joint efficiency factor
* $P_{max}$ is the maximum material operating stress
* $D_c$ is the column diameter

Hence we have:

$$t_{min}=\frac{1}{2}\times \frac{2500}{130}=9.61 \si{\mm}$$

### Preliminary Tray Division

For the sake of simplicity we shall first try $5$ parts for the column as
depicted in @tbl:dataPlateNoGSU.

| Plate Number | Plate Thickness $(\si{\mm})$ |
|--------------|--------------------------|
| $1$          | $10$                     |
| $2$          | $12$                     |
| $3$          | $14$                     |
| $4$          | $16$                     |
| $5$          | $18$                     |
Table: GSU Plate Approximation. {#tbl:dataPlateNoGSU}

We note that the factor $C_y$ for plate towers may be taken to be $1.15$ and
that the $18\si{\mm}$ plate is at the bottom of the absorber.

### Weight Estimation

Weight of plates $= 1.2 \times 4.9 = 5.9 \si{kN}$

Since , there are 14 valve trays ,therefore

Total weight of plates in the column $= 82 . 6 \si{kN}$

Hence,

Wall density of glass wool $= 130 \si{kg/m^3}$

Volume of insulation $= \pi {\times} 2 {\times} 20{\times} 0.07 = 8.79 \si{m^2}$

Weight of insulation $= 11.21 \si{kN}$

Total Weight $= 213 + 82.6 +11.21 $

$$= 306.81\si{kN}$$

### Stress estimates and analysis

Now, calculating the stresses due to wind loading,

Dynamic wind pressure $= 1280 \si{Pa}$

Mean Diameter of the tower $= 2.5 + (14 + 70 ) \times 0.002 = 2.668 \si{m}$

Wind loading    $=  1280 \times 2.668 = 3415 \si{Pa}$

Bending moment $= \frac{3415 }{2} \times 20^2 = 683000 \si{Nm}$

Checking our calculations and assumptions using stress analysis

For $18 \si{mm}$ plates,

$F_l = \frac{1 \times 2500}{4 \times18} = 34.72 \si{Pa}$

$F_h = \frac{1 \times 2500}{ 2 \times18} = 69.44 \si{Pa}$

Dead Weight $= \frac{306.81 \times10^3} { \pi \times 2518 \times 18} = 6.76 \si{Pa}$

Bending length of plate $= 2500 + 2 \times 18 =2536 \si{mm}$

$I_v = \frac{\pi}{64 \times (25364 - 25004) }= 1.128 \times 101 {mm^4}$

$F_b = 683000 \times 10^3 \times \frac{(2500/2 +18 )} {1.128 \times10^{11}} = 69.06 \si{Pa}$

Resulting Longitudinal Stress:

Stress based on upward wind flow $= 34.72 - 6.76 + 69.06 = 97.02 \si{Pa}$

Stress based on downward wind flow $= 69.06 + 6.76 - 34.72 = 41.1 \si{Pa}$

Difference in principle stress $= 97.02 - (-41.1) = 138.73 \si{Pa}$

Buckling stress $= 2 \times10^4 \times \frac{18} {2536} = 141.95 \si{Pa}$

Maximum compressive stress without internal pressure $= 6.76 + 69 . 06 = 77.83 \si{Pa}$

# Mechanical Design of Tray Column
## Objective

To find out the height of the column and the thickness of torispherical head as
well as the thickness of the trays.

From the previous calculations done with data in @tbl:dataTowerReplace we have
summarized the results in @tbl:dataTowerReplace.

| Variable                 | Value                    |
| -----------------------  | ---------------          |
| Shell Internal Diameter  | $2464 \si{\mm}$          |
| Valve Trays              | $14$                     |
| Tray Spacing             | $600 \si{\mm}$           |
| Hole Diameter            | $12 \si{\mm}$            |
| Plate Thickness          | $18 \si{\mm}$            |
| Weir Height              | $40 \si{\mm}$            |
| Top Disengaging Space    | $600 \si{\mm}$           |
| Bottom Separator Space   | $1000 \si{\mm}$          |
| Allowable Stress         | $130\si{bar}$            |
| Column and Tray Material | Stainless Steel (SS340L) |
Table: Previously Calculated Data. {#tbl:dataTowerReplace}

Our process for the design of the column will be:

1. Column height
2. Head calculation

## Calculations

### Column Height

We obtain the column height by use of @eq:colHeight.

$$h_{column} = t \times (1+ 13 T + 14 h) + 1000 = 19.2 \si{\m}$${#eq:colHeight}

Where:

* $h_{column}$ is the column height
* $t$ is the thickness

 Thus,  the height of the column of $20 \si{\m}$ is justifiable .

### Torispherical Head

As per the theoretical considerations discussed previously, our torispherical
head will relevant dimensions as given by @eq:toriHead.

$$Thickness = \frac{pd}{(2 \times f \times J - 0.2 \times p)} = 7.81 \si{\mm}$${#eq:toriHead}

Where:

* $t_{head}$ is the head thickness
* $J$ is the joint efficiency factor

This gives us $$t_{head}=7.81\si{\mm}$$

Further we note that:

$$\textnormal{Length of the bottom plate} = \frac{20}{5} = 4 \si{\mm}$${#eq}

$$\textnormal{Bottom separator space} = 1 \si{\mm} $${#eq}

$$\textnormal{Thickness of the bottom tray} = 18 \si{\mm}$${#eq}

## Result

The results are summarized in @tbl:ResultTori

| Parameter                     | Value        |
|-------------------------------|--------------|
| Thickness of ellipsoidal head | $8\si{\mm}$  |
| Thickness of the bottom tray  | $18\si{\mm}$ |
| Height of the column          | $20\si{\m}$  |
Table: GSU Tower Data. {#tbl:ResultTori}

# Mechanical Design of Reboiler

## Objective

To calculate the number of tubes in the reboiler.

## Data

| Variables                                                    | Values            |
| ------------------------------------------------------------ | ----------------- |
| Velocity of the MDEA in the tube side (Data from Flow Measuring Device place after the Flow control Valve ) | $1 \si{m/s}$      |
| Density of MDEA                                              | $1.024 \si{g/cc}$ |
| Flow rate of MDEA                                            | $0.2 \si{kg / s}$ |

##  Calculations

 Applying mass balance to calculate the number of tubes:

 $nPAv=2$

$\frac{n\times1.024\times103\times\pi\times(0.002)^2\times1}{4}=0.2$

$n=64$

##  Result

 Number of tubes in the kettle reboiler $= 64$

 Material of construction $= SS340L$

 Thickness of shell (from previous calculations ) $= 18 \si{mm}$
 
# Mechanical Hand Analysis of Plate Heat Exchanger

## Objective

To find the number of plates in one stack of a PHE

## Data:

The data used is given in @tbl:PHE

| Variables                                  | Values                       |
| ------------------------------------------ | ---------------------------- |
| Specific gravity of MDEA                   | $1.024$                      |
| Gap between the plates                     | $1.5 \si{mm}$                |
| Thickness of the plate                     | $2 \si{mm}$                  |
| Dimensions of the plate                    | $15 \si{mm}\times30 \si{mm}$ |
| Viscosity of MDEA                          | $38 \si{cP}$                 |
| Thermal conductivity of carbon steel plate | $45 \si{W/K}$                |
| Inlet temperature of rich MDEA             | $42^{\circ}C$                |
| Outlet temperature of rich MDEA            | $130^{\circ}C$               |
| Inlet temperature of lean MDEA             | $100^{\circ}C$               |
| Outlet temperature of rich MDEA            | $40^{\circ}C$                |
| Specific Heat Capacity                     | $600 \si{J/kg}$              |

Table: Plate Heat Exchanger Data. {#tbl:PHE}

## Calculations:

Assume:

* $U=100 \si{W/m^2K}$
* LMTD = $42^{\circ}C$

Heat load = Flowrate $\times$ Specific Heat Capacity $\times\Delta T$

$$Q = 0.13 \times 600 \times 88 = 6864 \si{W} $$

$$ A = \frac{Q}{U} \times LMTD = 0.194 \si{m^2}$$

Number of plates in a stack $=\frac{A}{LB}=21$

Applying mass balance:

 $p\times A\times v  =\frac{m}{n}$

$v=0.027 \si{m/s}$

Since laminar flow is maintained to prevent leakage of toxic MDEA

$Re = \frac{pvL}{u} = 106 .5$

$h = 1.86 \times \frac{k }{l} = 558 \si{W/m^2K}$

Assuming $0.3 \si{mm}$ of fouling resistance on one plate

Total Fouling resistance $= 0.3\times21 = 6.3 \si{mm}$

Using: $U_{o,cal}=\frac{1}{\frac{1}{h_0}+R_{do}+\frac{A_o}{A_i}(\frac{d_o-d_i}{2k_w})+\frac{A_o}{A_i}(\frac{1}{h_i})+\frac{A_o}{A_i}(R_{di})}$ we calculate the new value of $U_{o,cal}$.

$U_{o,cal}=101.66 \si{W/m^2K}$

Error$=1.66\%<30\%$

This implies our assumption was correct

## Result

 Number of plates in one stack $= 21$

 Number of stacks $= 15 (given)$

 Number of plates $= 315$

##  Comment
This is in close approximation to total $350$ plates used in PHE.

# Mechanical Design of Centrifugal Pump

## Objective

To calculate the minimum power of the pump to be installed for pumping MDEA to absorber from MDEA storage tank.

## Data

The data used is given in @tbl:CP

| Variable                    | Values             |
| --------------------------- | ------------------ |
| Height of the absorber      | $20 \si{m}$        |
| Height of the skirt support | $2.5 \si{m}$       |
| Density of MDEA             | $ 1.024 \si{g/cc}$ |

Table: Centrifugal Pump Data. {#tbl:CP}

## Calculations

 Total head required for pumping $= 20 + 2.5 = 22.5 \si{m}$

 Loss coefficient , based on the surface roughness of the carbon steel $= 0.7$

 Neglecting the effects of bends we have:

 Total head loss $= \frac{kv^2}{2g}$

 Calculating velocity from the Bernoulli's equation we have:

 $V= (2gh)0.5 = 21 \si{m/s}$

 Total head loss $= 15.75 \si{m}$

 Total head required in the pump $= 22.5 +15.75  = 38.25 \si{m}$

 Power of the pump $= pQHg = 150 \si{kW}$

## Result

 Power of the pump  $= 150 \si{kW}$

##  Comments

 Result obtained is in close accordance with the $200 \si{hP} = 201.6 \si{kW}$ pump used in the plant.
 
# Mechanical Design of Storage Vessel

## Objective

To calculate the thickness of the storage vessel

## Data

The data used is given in @tbl:SV

| Variables                                                | Values         |
| -------------------------------------------------------- | -------------- |
| Internal pressure                                        | $ 1 \si{atm}$  |
| Diameter of the vessel                                   | $6 \si{m}$     |
| Maximum permissible stress of the stainless steel vessel | $130 \si{bar}$ |
| Joint efficiency factor                                  | $1$            |
| Height of the storage vessel                             | $5 \si{m}$     |
Table: Storage Vessel Data. {#tbl:SV}

## Calculations

 Applying the formula for thin pressure vessel under internal pressure ,

 $Thickness (t) = \frac{Pressure(P){\times Diameter(D)}}{2 joint efficiency factor(f_j)}= 24 \si{mm}$

##  Result

 The thickness of the bottom plate $= 24 \si{mm}$

## Comments

 There is no roof provide for the storage vessel to cut the cost. Blanketing is done by flue gases.

 The thickness of the plate remains constant throughout at ONGC, Surat.
