\part{Literature Review}\label{part:litRev}

# Tall Tower Design Theory

The design of tall towers, here taken to be the mechanical design of the
absorption and stripping towers is crucial to the stable operation of the plant.
Hence we must first determine the concept of construction behind towers of large
scales.

## Theory of Tall Vertical Vessels 

Self supporting tall equipments are widely used in chemical process industries.
Tall vessels may or may not be designed to be self supporting. Distillation
column, fractionating columns, absorption tower, multistage reactor, stacks,
chimneys etc. comes under the category of tall vertical vessels. In earlier
times high structure (i.e. tall vessels) were supported or stabilized by the use
of guy wires.

Design of self supporting vertical vessels is a relatively recent concept in
equipment design. and it has been widely accepted in the chemical industries
because it is uneconomical to allocate valuable space for the wires of guyed
towers. In these units ratio of height to diameter is considerably large due to
that these units are often erected in the open space, rendering them to wind
action. Many of the units are provided with insulation, number of attachments,
piping system etc.


For example distillation and absorption towers are associated with a set of
auxiliary equipments i.e. reboiler, condenser, feed preheater, cooler and also
consists of a series of internal accessories such as plates or trays or variety
of packings.

 Often the vertical vessels/columns are operated under severe conditions, and
type of the material these columns handles during operation may be toxic,
inflammable or hazardous in other ways. Structural failure is a serious concern
with this type of columns. As a result the, the prediction of membrane stresses
due to internal or external pressure will not be sufficient to design such
vessels. Therefore, special considerations are necessary to take into account
and predict the stresses induced due to dead weight, action of wind and seismic
forces.

## Shell Stresses

The primary stresses are basically due to:

\begin{enumerate}[label=(\alph*)]
\item Circumferential stress, radial stress and axial stress due to internal pressure or vacuum in the vessel
\item Compressive stress caused by dead load such as self weight of the vessel including insulation, attached
equipment and weight of the contents
\end{enumerate}

### Loads
Dead loads
:   This is the weight of a structure itself, including the weight of
fixtures or equipment permanently attached to it.

Live loads
:   This is moving or movable external load on a structure and includes the weight of
furnishing of building, of the people, of equipment etc. but doesn't
include wind load. 

#### Wind Loads

If the vessels are located in open, it is important
to note that wind load also act over the vessel. Under wind load, the
column acts as cantilever beam as shown in figure. Therefore while
designing the vessel stresses induced due to different parameters have
to be considered such as:

\begin{enumerate}[label=(\roman*)]
\item  compressive and tensile stress induced due to bending moment caused  by wind load acting on the vessel and its attachments;
\item stress induced due to eccentric and irregular load from piping, platforms etc.
\item stress induced due to torque about longitudinal axis resulting from offset piping and wind loads and
\item stress resulting from seismic forces. Apart from that, always there are some residual stresses resulting due to methods of fabrication used like cold forming, bending, cutting, welding etc
\end{enumerate}

Under the loads discussed, the generalized bending moment diagram is shown in
@fig:bendMom.

![Bending Moment](img/bendingGenTall.png "Diagram of bending moment"){#fig:bendMom}

## Pressure Stresses

We shall develop the general form of the equations for axial and circumferential
pressure stresses resulting from internal and external pressures.

### Tensile stresses resulting from internal pressure

The simple equation may be derived to determine the axial and
circumferential stresses due to internal pressure in the shell of a
closed vessel. @fig:intPressureDeri shows a diagram representing a thin walled
cylindrical vessel in which a unit form stress, $f$, may be assumed to
occur in the wall as a result of internal pressure.

![Longitudinal forces acting on thin cylinder (internal pressure)](img/intPressureDeri.jpeg "Internally Pressurized Vessel"){#fig:intPressureDeri}

We adopt the following notation:

* $l$ is the length (inches)
* $d$ is the inside diameter (inches)
* $t$ is the thickness of the shell (inches)
* $p$ is the internal pressure (pounds per square inch gage)

#### Longitudinal Stresses

Limiting ourselves to analyzing only the pressure stresses, the longitudinal
force, $P$ resulting from an internal pressure, $p$ acting on a thin cylinder of
thickness $t$, length $l$ and diameter $d$ is:

\begin{equation}
\label{eq:1}
P = \frac{p\pi d}{4}
\end{equation}

\begin{equation}
\label{eq:2}
a = t \pi d
\end{equation}

Where we note that:

* $P$ is the force tending to rupture the vessel longitudinally
* $a$ is the area of metal resisting longitudinal rupture

Therefore we note that

$$ f=\textnormal{stress}= \frac{P}{a} = \frac{pd}{4t} $$
$$ t= \frac{pd}{4f} $${#eq:longIntP}

#### Circumferential Stresses

Considering @fig:cylIntP we shall consider on the circumferential stresses
induced by internal pressure.

![Circumferential forces acting on thin cylinders (internal pressure)](img/intCircPDeri.png){#fig:cylIntP}

We note that:

* $P=p\times d \times l$ is the force tending to rupture the vessel circumferentially
* $a=2 \times t \times l$  is the area of the metal resisting the forces

Therefore we obtain

\begin{align}
\label{eq:5}
f=\textnormal{stress}= \frac{P}{a} = \frac{pd}{2t} \\
\label{eq:circIntP}
t= \frac{pd}{2f}
\end{align}

#### Analysis

\autoref{eq:circIntP} and \autoref{eq:longIntP} indicate that for a specific allowable stress, fixed
diameter and given pressure, the thickness required to restrain the pressure for
the condition of \autoref{eq:circIntP} is double than that of the \autoref{eq:longIntP}. Therefore,
the thickness as determined by \autoref{eq:circIntP} is controlling and is the commonly
used thin walled equation referred to in the various codes for vessels.

The above equation development makes no allowances for corrosion and does not
recognize the fact that welded seams or joints may cause weakness. Experience
has shown that an allowance may be made for such weakness by introducing a joint
efficiency factor $j$ in the equations and this factor is always less than unity
and is specified for a given type of welded construction in the various codes.
The thickness of metal, $c$, allowed for any anticipated corrosion is then added
to the calculated required thickness, and the final thickness value rounded off
to the nearest nominal plate size of equal or greater thickness.

Based on this we may now rewrite \autoref{eq:circIntP} and \autoref{eq:longIntP}
to be in the form:

$$ t=\frac{pd}{4f j} + c $${#eq:fullIntPLong}

$$t=\frac{pd}{2 f j}+c$${#eq:fullIntPCirc}

Where:

* $l$ is the length (inches)
* $d$ is the inside diameter (inches)
* $t$ is the thickness of the shell (inches)
* $p$ is the internal pressure (pounds per square inch)
* $f$ is the allowable working stress (pounds per square inch)
* $E$ is the join efficiency (dimensionless)
* $c$ is the corrosion allowance (inches)

### Compressive stresses due to dead loads

The major sources of the load acting over tall vertical vessels are the weight
of the vessel shell and weight of the vessel fittings which includes the
internal, external and auxiliary attachments.

Internal fittings
:   trays, packing, heating and cooling coils etc.

External fittings
:   platforms, piping, insulation, ladders etc.

Auxiliary attachments
:   instruments, condensers etc.

Therefore, stresses caused by dead loads may be
considered in three groups for convenience: 

\begin{enumerate}[label=(\alph*)]
\item stress induced by shell and insulation 
\item stress induced by liquid in vessel 
\item stress induced by the attached equipment
\end{enumerate}

#### Stress induced by shell and insulation

We assert that the stress due the weight of shell and insulation at any distance
$X$ from the top of a vessel having a constant shell thickness is given by
@eq:weightStressShell.

$$ W_s = \frac{\pi}{4} \times (D_o^2-D_i^2) \times \rho \times X $${#eq:weightStressShell}

Where:

* $W_s$ is the weight of shell above point $X$ from the top
* $D_i$ and $D_o$ denote the inner and outer shell diameters
* $X$ is the distance measured from the top of the vessel
* $\rho$ is the density of the shell material

Also for the insulation as height $X$ we have @eq:weightStressInsul

$$ W_{i} = \pi \times D_m \times \rho \times X \times t $${#eq:weightStressInsul}

Where:

* $W_i$ is the weight of the insulation
* $D_m$ is the mean diameter of insulation
* $X$ is the height measured from the top of the column
* $t$ is the thickness of the insulation
* $\rho$ is the density of the insulation

As we define the compressive stress to be the force per unit area we may now
write @eq:stressFpaShell and @eq:stressFpaInsul.

$$f_{d_{wt shell}} = \frac{ \frac{\pi}{4} (D_o^2-D_i^2) \times X \times
\rho_s}{\frac{\pi}{4} (D_o^2-D_i^2)} = X \rho_{s}$${#eq:stressFpaShell}

$$ f_{d_{wt ins}} = \frac{\pi \times (D_{m \rho t})_{ins}X}{\pi D_m t_s} =
\frac{\rho_{ins}t_{ins}X}{t_{s}} $${#eq:stressFpaInsul}

Where:

* $D_m$ is the mean diameter of the shell given by $D_m=\frac{D_{s}+D_{i}}{2}$
* $t$ is the thickness of shell without corrosion allowance

#### Stress induced due to liquid retained in column

This depends on the internal configuration of the column as the major hurdle is
in determining accurately the amount of liquid. Hence we state @eq:stressLiq
recognizing that there is a dependency on the tray column diameter, number of
plates, holdup over each plate, liquid in the downcomer etc.

$$ f_{d_{liquid}} = \frac{\sum W_{liquid}}{\pi D_m t_s} $${#eq:stressLiq}

Where:

* $D_m$ is the mean vessel diameter (feet)
* $t$ is the thickness of shell without corrosion allowance

#### Stress induced by attachments

Similar to the liquid stresses, the stresses due to attachments are calculated
on the basis of the weight of attachments like trays, overhead condensers,
platforms, ladders etc.

Hence we have @eq:stressAtta in a manner similar to @eq:stressLiq.

$$ f_{d_{attachments}} = \frac{\sum W_{attachments}}{\pi D_m t_s} $${#eq:stressAtta}


#### Analysis
From the forgoing analysis we may now write the total dead loss stress,
$f_{total}$ acting along the longitudinal axis of the shell to be a simple sum
as shown in @eq:stressLongiTot.

$$ f_{total}=\sum_{i=liq,shell,etc} f_{i} $${#eq:stressLongiTot}

### Axial stresses due to wind loads

The stress due to wind load may be calculated by treating the vessel as
uniformly loaded cantilever beam. The wind loading is a function of wind
velocity, air density and shape of tower and is given by @eq:windStress

$$ P_w=\frac{1}{2} \times C_D \times \rho \times V_w^2 \times A $${#eq:windStress}

Where: 

* $C_D$ is the drag coefficient
* $\rho$ is the density of the surrounding fluid
* $V_w$ is the wind velocity
* $A$ is the projected area normal to the direction of wind

If wind velocity is known approximate wind pressure can be computed from the
simplified relationship given in @eq:simpleWind.

$$ P_w=0.05 V_w^2 $${#eq:simpleWind}

Where: 

* $P_w$ is the minimum wind pressure to be used for the moment calculation
  (Newton per meter square)
* $V_w$ is the maximum wind velocity experienced by the region under the worst
  weather condition (kilometers per hour)

Wind velocity varies with height. This can be seen in @fig:windVar. The velocity
of wind near the ground is less than that away from it. Therefore, to take into
account this factor a variable wind force may be taken. 

![Tall column subjected to wind pressure](img/windVar.png "Wind Pressure Height"){#fig:windVar}

It is recommended to
calculate the wind load in two parts, because the wind pressure does not remain
constant through the height of the tall vessel. Say for example in case of
vessel taller than $20\si{\meter}$ height, it is suggested that the wind load
may be determined separately for the bottom part of the vessel having height
equal to $20\si{\meter}$, and then for rest of the upper part.

#### Load due to wind acting on the bottom portion of the vessel

$$P_{bw} = K_{1} K_{2} p_{1} h_{1} D_{o}$$

Where:

* P_{bw} is the total force due to wind load acting on the bottom part of the vessel with height equal to or less than $20\si{\meter}$
* D_{o} is the outer diameter of the vessel including the insulation thickness
* h_{1} is the height of the bottom part of the vessel equal to or less than $20\si{\meter}$
* K_{1} is the coefficient depending upon the shape factor (i.e. $1.4$ for flat plate; $0.7$ for cylindrical surface)


#### Load due to wind acting on the upper portion of the vessel

$$P_{uw} = K_{1} K_{2} p_{2} h_{2} D_{o}$$

Where:

* $P_{uw}$ is the total force due to wind load acting on the upper part of the
  vessel, above $20\si{\meter}$
* $D_{o}$ is the outer diameter of the vessel including the insulation thickness
* $h_{2}$ is the height of the upper part of the vessel, above $20\si{\meter}$
* $K_{1}$ is the coefficient depending upon the shape factor (i.e. $1.4$ for flat plate; $0.7$ for cylindrical surface)
* $K_{2}$ coefficient depending upon the period of one cycle of vibration of the
vessel

We note that $K_{2} = 1$, if period of vibration is $0.5$ seconds or less; $K_{2} = 2$, if period exceeds $0.5$ seconds.


#### Stress due to bending moment

For the stress induced by the wind due to the bending moment in the axial
direction we shall note that we may write @eq:windMone and @eq:windMtwo.

$$ M_w = P_{bw} \frac{h_1}{2} $${#eq:windMone}

$$ M_w=P_{bw} \frac{h_1}{2} + P_{uw} \frac{h_1+h_2}{2} $${#eq:windMtwo}

From which we can assert that the bending stress is given by @eq:windBendStress

$$ f_w= \frac{4 M_w}{\pi t (D_i+t) D_i} $${#eq:windBendStress}

Where:

* $f_w$ is the longitudinal stress due to wind moment
* $M_w$ is the bending moment due to wind loads
* $D_i$ is the inner diameter of shell
* $t$ is the corroded shell thickness

## Tall Tower Height Estimation

Height of the tall vessel $X$ can be estimated by combining all the stresses
acting in the axial direction may be added and equated to the allowable tensile
stress, excluding the stresses due to eccentricity of load and seismic load.

Hence we have:

$$ \frac{\sum W_{attachments} (X)}{\pi D_m t_s}= f_{t_{max}} $$
$$ \frac{\sum W_{attachments} (X)}{\pi D_m t_s} - f_{tall}J =0 $$

Where:

* $t_s$ is the shell thickness

From the above equations, on replacing $f_{t max}$ by $f_{tall}$ we get the
quadratic form. $aX^2+bX+c=0$

The solution to this is well known to be simply:

$$X= \frac{-b \pm \sqrt{b^2-4ac}}{2a}$${#eq:shriDhar}

Once the value of $X$ is estimated, it is used to adjust the plate thickness, $t$,
for the top portion of the column, so that the height of portion $X$ will be
multiple of the plate width used. The plate thickness which is originally
selected is satisfactory up to a considerable height. Trays below the distance $X$
of the column must have an increased thickness. If the above condition does not
satisfy then calculation of the axial stress with an increase in the thickness
according to @eq:weightStressShell and @eq:shriDhar are repeated, and this repetitive steps in
calculation helps to estimate subsequent height ranges to corresponds with
increase thickness. The procedure is repeated till the entire height of the
vessel is covered.

## Column Internals

### Design and construction features of plates and trays

Plate or trays can be constructed either as one piece trays or as sectional
trays. Several factors control the design and construction features of plates or
trays. These factors include:

\begin{itemize}
\item down coming liquid impact, liquid weight, load on the tray due to dead
weight
\item expansion due to rise in temperature
\item fabrication and installation ease
\item support type 
\item material of construction and safety
\end{itemize}

One piece trays may be made of materials such as cast iron, copper or steel
including the risers and down comers, with a thickness of $2$ to $6$ \si{\mm} depending on
the diameter and the material. 

 
The sectional tray is made from section in the form of floor plates cut form
sheets, which are laid on the supporting beams and peripheral ring. A clearance
is provided between adjacent sections and clamping devices are used for fixing.


The cast iron tray is able to withstand compressive forces created due to
thermal expansion within reasonable limits and their diameters are also limited
to small sizes. Whereas the one piece shaped tray made of ductile material is
comparatively thin and has a limited ability to absorb forces due to thermal
expansion. Therefore, in order to prevent the distortion of the tray floor,
provision of packing seal between the edge of the tray and column wall help to
relieve these problem.


On the other hand one of the main advantages of the sectional tray is its
ability to cope with thermal expansion. The individual sections of the tray are
placed on the supporting structures, an asbestos jointing material inserted
between the section and the support member. Each section is finally held by
frictional clamping devices. Sectional trays are also necessary when these are
to be taken inside through the limited size of column man holes in parts and
assembled inside.

### Loading conditions of trays and plates 

Plates and trays used in the tall column have to be maintained flat in order to
provide a uniform seal of the liquid on their surfaces. During operation various
loads acts on the plates and trays, and due to that plates and trays are likely
to deflects greatly, unless they are provided with sufficient supporting systems
or and made adequately thick. 

Deflections caused by the different loads are: 

\begin{enumerate}[label=(\alph*)]
\item tray weight with contacting devices and down comers \label{bullet:aLoad}
\item liquid weight 
\item impact load of the down coming liquid \label{bullet:cLoad}
\item weight of maintenance personnel and tools
\item expansion due to a rise in temperature (if
prevented).\label{bullet:eLoad}. Usually these have provision for free
expansion. Load due to this may be ignored.
\end{enumerate}

Quantitatively we estimate the load via @eq:loadInt.

$$ \textnormal{Load}= \frac{w\nu}{g} $${#eq:loadInt}

Where:

* $w$ is the weight of liquid per second
* $\nu$ is the velocity per second
* $g$ is the gravitational constant

Loads denoted by \autoref{bullet:aLoad} and \autoref{bullet:cLoad} need to be
considered for realistic estimations of the deflection. In general, a deflection
of $3$\si{\mm} permissible and in special cases this is may be limited to
$2$\si{\mm}.

Similarly, for cleaning and assembly or inspection operations,
loads in \autoref{bullet:aLoad} and \autoref{bullet:eLoad} should be considered.
The design is based not on the permissible deflection but on the permissible
stresses.
# Column Internal Design Theory

Having determined the exterior of the tower and it's mechanical properties we
shall now move towards an understanding of the mechanical properties of the
column internals, which involve plates, closures (heads) and their choices and
performance reviews.

## Sectional Construction

The trays, downcomer segments and other tray components are usually constructed
in sections for column diameter of $1\si{\m}$ and above. The plate sections are
designed in such that it can be removed through the column manholes, preferably
detachable from both above tray and tray below. The plate sections are installed
usually starting from one side on a peripheral supported ring welded to inside
shell wall. 

The support ring is not normally extended into the downcomer area and tray
perforations needs to be avoided over the support ring area. Support ring width
is usually between $40\si{\mm}$ to $90\si{\mm}$. Trays are either clamped or
bolted to the support ring.

The support beams prevent tray deflection under load for larger diameter column.
One or more major beams are required for large diameter column (usually $<3\si{\m}$).
Trays can be supported by support rings and minor beams for small diameter
column (usually $<3\si{\m}$) i.e. omitting the major beams.

The beams are commonly placed at about $0.6\si{\m}$ apart and should able to
hold the necessary weight during column operation as well as installation. The maximum
plate deflection under the operating conditions should be less than $3\si{\mm}$ for
tower diameter more than $2.5\si{\m}$. The number of plate sections installed
under an apron and across the accumulator trays is minimized. Clearance
should be provided between the bottom of the beams and the tray below for the
perpendicular installation of the beams to the liquid flow direction on the tray
below @fig:sectionCons i.e. in case of cross flow.

![ Common sectional construction of plate](img/sectionCons.png "Sectional Plate"){#fig:sectionCons}


## Cartridge Construction
The cartridge or stacked type plate construction is used for column diameters
smaller than $1\si{\m}$ as in such small diameter columns man entry to the
column for the installation and necessary maintenance work is difficult.
Cartridge constructions are employed for sieve, valve and bubble cap trays.
Cartridge assemblies of $10$ plates or so, are formed with the help of screwed
rods and plate spacer bars.

The tall columns are divided into multiple flanged sections
and the prefabricated cartridge tray assemblies are installed in each flanged
sections with suitable downcomer clearances. The plates are not fixed to the
shell wall and leakages may occur. A vertical metal seal is frequently used
around each tray to decrease leakage around the tray edge.

Classical cartridge construction is shown in @fig:cartridgeCons.

![Common plate cartridge construction](img/cartridgeCons.png "Cartridges"){#fig:cartridgeCons}


## Downcomer Details
The liquid from the top tray is directed to the tray below through a downcomer
or downspout. The downcomer liquid flow passage is normally formed by a vertical
plate starting from the weir outlet, called an apron. The adequate residence
time needs to be ensured in the downcomers for the disengagement of vapor/gas
from liquid. The downcomer residence time of more than $3\si{\s}$  is desirable to get
only clear liquid on the tray. The different types of segmental downcomers
constructions are shown in @fig:segmentalDowncomers. The bottom downcomer area is normally more
than $50\%$ of the top downcomer area for sloped downcomers.

![Downcomer segmental design](img/sectionalDowncomers.png "Downcomer parts"){#fig:segmentalDowncomers}

### Design

![Downcomer backup](img/downComer.png){#fig:bringmedown}

The downcomer area and plate spacing must be such that the level of the liquid
and froth in the downcomer is well below the top of the outlet weir on the plate
above. If the level rises above the outlet weir the column will flood. The
backup of liquid in the downcomer is caused by the pressure drop over the plate
(the downcomer in effect forms one leg of a U-tube) and the resistance to flow
in the downcomer itself; see @fig:bringmedown

In terms of clear liquid the downcomer backup is given by:

$$h_b=(h_w+h_{ow})+h_t+h_{dc}$${#eq:misery}

Where:

* $h_b$ is the downcomer backup from plate surface in \si{mm}
* $h_{dc}$ is the head loss in the downcomer in \si{mm}

The main resistance to flow will be caused by the constrictionat the downcomer outles and the head loss in the downcomer can be estimated using the equiation given by Cicalese et al. (1947):

$$ h_{dc}=166\left[\frac{L_{wd}}{\rho_L A_m}\right]^2 $${#eq:One}
Where:

* $L_{wd}$ is the liquid flow rate in the downcomer in \si{kg/s}
* $A_m$ is either the downcomer area $A_d$ or the clearance area under the
  downcomer $A_{ap}$, whichever is smaller in \si{m^2}

$$ A_{ap}=h_{ap}l_w $${#eq:Two}
Where:

* $h_{ap}$ is the height of the bottom edge of the apron above the place.

$$ h_{ap}=h_w- 5 \textnormal{ to } 10\si{ \mm} $$


Froth Height

:   To predict the height of “aerated” liquid on the plate, and the height of froth in the downcomer, some
means of estimating the froth density is required. The density of the “aerated” liquid will normally be between 0.4 to 0.7 times that of the clear liquid. For design purposes it is usually satisfactory to assume an average value of 0.5 of the liquid density. This value is also taken as the mean density of the fluid in the downcomer, which means that for safe design the clear liquid backup, calculated from equation @eq:misery, should not exceed half the plate spacing lt, to avoid flooding. Allowing for the weir height:
$$h_b \leq \frac{1}{2}(l_t+h_w) $$



    This criterion is typically considered to be over safe, and where close plate spacing is desired a better estimate of the froth density in the downcomer should be made.

Downcomer Residence Time

:   Sufficient residence time must be allowed in the downcomer for the entrained vapor to disengage
from the liquid stream to prevent heavily “aerated” liquid being carried under the downcomer.
A time of at least 3 seconds is recommended.
The downcomer residence time is given by

$$t_r=\frac{A_d h_{bc} \rho_L}{L_{wd}} $${#eq:}

Where:

* $t_r$ is the residence time, (\si{s}) 
* $h_{bc}$ is the clear liquid back-up (\si{m})


## Feed Inlets and Side Stream Draws 
The feed liquid is commonly introduced vertically downward into the downcomer of
the tray above the feed point through an open pipe. A slotted branch distributor
is used for of flashing feed (liquid) to avoid early flooding as shown in
@fig:feedSide.

The vapor generally enters the column tangentially through an open inlet nozzle
placed almost at right angles to the liquid flow on the above tray. The
clearance between the feed pipe end and feed plate below is normally kept more
than 0.4 m when the feed liquid is flashed in active tray area. Wider tray
spacing is needed where the feed pipe and the side stream takeoff pipe to
provide a liquid seal are installed. 

![Nozzles and inlets](img/feedSide.png "Nozzle, inlet"){#fig:feedSide}

## Tray Miscellany

We also briefly discuss here two important practical aspects of trays, namely
the drainage and manways.

### Tray drainage

Some amount of liquid is usually remains trapped on a bubble cap (positive seal
tray) and on certain valve trays when the column is shut down. This liquid is
normally drains through weep holes located near the outlet weirs. Weep hole
diameter usually ranges from $3$ to $15 \si{mm}$. The recommended weep hole area
is $4 \textnormal{in}^{2}$ per $100 \textnormal{ft}^{2}$ of tray area with
$50$ bubble caps and $4$in weir to drain in about $8 \si{hr}$ .

### Tray manways

The maintenance workers travel from one tray to another through tray manways .
The size of the manways should be such that a person can safely travel through a
tray manway segment and also it is removable through the column manholes.
Manways are usually rectangular and the recommended size is $\si{40 cm \times 50
cm}$. Tray manways should be removable from top and as well as from the tray
below.

## Ends

We assert that under the design considerations already enumerated in the project
our tray column is considered to be an unfired pressure vessel as defined by
@2825CodeUnfired and we shall follow the sizing accordingly.

Some common heads used for domed vessels, like that of our tray column are:

1. Hemispherical
2. Semi-ellipsoidal
3. Dished and flanged

For reasons of performance and ease of fabrication we have opted for a
torispherical head which is referred to as a dished and flanged end in the
relevant code. Note the structure as shown in @fig:torisIS

![Dished and Flanged End](img/torisIS.png){#fig:torisIS}

# Heat Exchanger Theory

We shall follow here a brief overview of heat exchangers in the manner of
@shahFundamentalsHeatExchanger2003 for the classification schemes.

Heat Exchanger
:   A heat exchanger is a device that is used to transfer thermal energy
(enthalpy) between two or more fluids, between a solid surface and a fluid, or
between solid particulates and a fluid, at different temperatures and in thermal
contact. In heat exchangers, there are usually no external heat and work
interactions. 

## Classification

Though the variance of heat exchanger forms are almost as large as that of the
applications of chemical engineering itself due to their ubiquitous nature and
synergistic relation to industries, we seek here to represent the vast number of
possible options and discuss briefly our choice of equipment.

![A general classification scheme [@shahFundamentalsHeatExchanger2003]](img/classiHeat.png){#fig:classiHeat}

### On The Basis Of Construction

More relevant to our discussion on the probable equipment options for sweetening
plants are the classifications based on the blueprint scheme as shown in @fig:classiHeatCons.

![Construction based classification [@shahFundamentalsHeatExchanger2003]](img/classiHeatCons.png){#fig:classiHeatCons}

![Heat transfer surface area density spectrum of exchanger surfaces [@shahFundamentalsHeatExchanger2003]](img/heatDensity.png){#fig:heatDesnityExcha}

# Design Theory for Plate Heat Exchangers

We can design a plate heat exchanger (PHE) using the concepts of Shell and Tube Heat
Exchangers by scaling up the data and calculating complex flow pressure drop
using the methods assigned for Shell and Tube Heat Exchangers.

On the other hand shell and tube heat exchangers of simple construction are used
as a preheaters and kettle reboilers. The process calculations of preheaters are
performed previously in the Energy Balance section of the project. Mechanical
construction is discussed henceforth.

## Construction

The basics of plate heat exchanger design is covered masterfully by
@cao2009heat.

A thin planar metallic plate separating two circulating fluids at different temperatures can act as a heat
transfer surface and to complete the device, two more plates must be added at both
sides to form the channels where the fluids circulate.

The plates are kept separated by means of elastomeric gaskets and the assembly is
clamped together in a frame by clamping bolts that must exert the necessary pressure to maintain the plates
in position. A schematic drawing of a plate heat exchanger is shown in @fig:plateCompo.
The gaskets are such that the separation between plates is only a few millimeters to achieve high fluid
velocities and hence high heat transfer coefficients. This assembly is the basis of an elemental plate heat
exchanger.

The main objection to this type of device is that it has important limitations regarding the maximum
flow rates that it can handle, and it would not be practical to indefinitely increase the size of the plates when
higher flow rates and heat duty are required. In this case it is necessary to increase the number of plates,
making both fluids circulate through alternate channels separated by the heat transfer plates, as shown in
@fig:plateHeatFlow. This is basically the arrangement of a plate heat exchanger.

![Flow pattern of a typical plate heat exchanger](img/plateHeatFlow.png){#fig:plateHeatFlow}

Basically, a plate heat exchanger consists of a pack of corrugated metal plates with portholes for the pas-
sage of the two fluids. Heat transfer takes place through the plates. The plate pack is assembled between a
fixed frame plate and a movable pressure plate and is compressed by tightening bolts (@fig:plateCompo). The plates
are fitted with gaskets that seal the interplate channels. The number of plates is defined by the heat transfer
requirements. The plates and pressure plate are suspended by an upper carrying bar and located by a lower
guiding bar, both of which are fixed to a support column.

![Components of a typical plate heat exchanger](img/plateHeatCompo.png){#fig:plateCompo}

The plates are corrugated. The corrugations provide reinforcement as well as a large number of plate-
to-plate contact points. These contact points provide full plate support and make it possible to have high
operating pressures with very thin-gauge plates. The usual gap between consecutive plates is about 5 mm.
The plates form the channels where the fluids circulate. The fluids enter and exit these channels through
portholes located at the corners of the plates. These portholes may be perforated or not, as required by the
desired circulation scheme. The portholes form the distribution headers, which distribute the fluids into the
circulation channels.

The fluids enter the unit through inlet nozzles perforated in the frames and pass into the distribution
headers. From the headers, the fluids distribute into the circulation channels following a specific flow pat-
tern defined during the design stage. This is achieved by the positioning of elastomeric gaskets to blank off
certain flowpaths and by blinding specific portholes of individual heat exchange plates. A suitable design
of gaskets and portholes allows different flow configurations.

# ST Heat Exchangers

Shell and Tube heat exchangers are often abbreviated to S\&T or even ST heat exchangers.

The flow rates of both hot and cold streams, their terminal temperatures and fluid properties are the primary inputs of thermal design of heat exchangers.

## Thermal design considerations

Thermal design of a shell and tube heat exchanger typically includes the determination of heat transfer area, number of tubes, tube length and diameter, tube layout, number of shell and tube passes, type of heat exchanger (fixed tube sheet, removable tube bundle etc), tube pitch, number of baffles, its type and size, shell and tube side pressure drop etc.

## Shell

Shell is the container for the shell fluid and the tube bundle is placed inside the shell. Shell diameter should be selected in such a way to give a close fit of the tube bundle. The clearance between the tube bundle and inner shell wall depends on the type of exchanger . Shells are usually fabricated from standard steel pipe with satisfactory corrosion allowance. The shell thickness of 3/8 inch for the shell ID of 12-24 inch can be satisfactorily used up to 300 psi of operating pressure.

## Tube

Tube OD of ¾ and 1'' are very common to design a compact heat exchanger. The most efficient condition for heat transfer is to have the maximum number of tubes in the shell to increase turbulence. The tube thickness should be enough to withstand the internal pressure along with the adequate corrosion allowance. The tube thickness is expressed in terms of BWG (Birmingham Wire Gauge) and true outside diameter (OD). The tube length of 6, 8, 12, 16, 20 and 24 ft are preferably used. Longer tube reduces shell diameter at the expense of higher shell pressure drop. Finned tubes are also used when fluid with low heat transfer coefficient flows in the shell side. Stainless steel, admiralty brass, copper, bronze and alloys of copper-nickel are the commonly used tube materials.

## Tube pitch, tube-layout and tube-count

Tube pitch is the shortest center to center distance between the adjacent tubes.
The tubes are generally placed in square or triangular patterns (pitch) as shown
in the.

The number of tubes that can be accommodated in a given shell ID is called tube count. The tube count depends on the factors like shell ID, OD of tube, tube pitch, tube layout, number of tube passes, type of heat exchanger and design pressure.

## Tube passes

The number of passes is chosen to get the required tube side fluid velocity to obtain greater heat transfer co-efficient and also to reduce scale formation. The tube passes vary from 1 to 16. The tube passes of 1, 2 and 4 are common in application. The partition built into exchanger head known as partition plate (also called pass partition) is used to direct the tube side flow.

Common tube layouts.

| Tube OD, inch. | Pitch Type | Tube Pitch, inch. |
| -------------- | ---------- | ----------------- |
| $\frac{3}{4}$  | Square     | $1$               |
| $\frac{3}{4}$  | Triangular | $\frac{15}{16}$   |

## Tube sheet

The tubes are fixed with tube sheet that form the barrier between the tube and shell fluids. The tubes can be fixed with the tube sheet using ferrule and a soft metal packing ring. The tubes are attached to tube sheet with two or more grooves in the tube sheet wall by ‘tube rolling'. The tube metal is forced to move into the grooves forming an excellent tight seal. This is the most common type of fixing arrangement in large industrial exchangers. The tube sheet thickness should be greater than the tube outside diameter to make a good seal. The recommended standards (IS:4503 or TEMA) should be followed to select the minimum tube sheet thickness.

## Baffles

Baffles are used to increase the fluid velocity by diverting the flow across the tube bundle to obtain higher transfer co-efficient. The distance between adjacent baffles is called baffle-spacing. The baffle spacing of 0.2 to 1 times of the inside shell diameter is commonly used. Baffles are held in positioned by means of baffle spacers. Closer baffle spacing gives greater transfer co-efficient by inducing higher turbulence. The pressure drop is more with closer baffle spacing. The various types of baffles are shown in **Figure** . In case of cut-segmental baffle, a segment (called baffle cut) is removed to form the baffle expressed as a percentage of the baffle diameter. Baffle cuts from 15 to 45% are normally used. A baffle cut of 20 to 25% provide a good heat-transfer with the reasonable pressure drop. The % cut for segmental baffle refers to the cut away height from its diameter. **Figure** also shows two other types of baffles.

## Fouling Considerations

The most of the process fluids in the exchanger foul the heat transfer surface. The material deposited reduces the effective heat transfer rate due to relatively low thermal conductivity. Therefore, net heat transfer with clean surface should be higher to compensate the reduction in performance during operation. Fouling of exchanger increases the cost of (i) construction due to oversizing, (ii) additional energy due to poor exchanger performance and (iii) cleaning to remove deposited materials. A spare exchanger may be considered in design for uninterrupted services to allow cleaning of exchanger.

The effect of fouling is considered in heat exchanger design by including the tube side and shell side fouling resistances. Typical values for the fouling coefficients and resistances are summarized in **Table 1.3** . The fouling resistance (fouling factor) for petroleum fractions are available in the text book.

## Selection of fluids for tube and the shell side

The routing of the shell side and tube side fluids has considerable effects on the heat exchanger design. Some general guidelines for positioning the fluids are given in Table. It should be understood that these guidelines are not ironclad rules and the optimal fluid placement depends on many factors that are service specific.

# Design Theory for Storage Vessels

## Storage tanks

These are containers that hold liquids, compressed gases (gas tank; or in U.S.A
"pressure vessel", which is not typically labeled or regulated as a storage
tank) or mediums used for the short- or long-term storage of heat or cold. The
term can be used for reservoirs (artificial lakes and ponds), and for
manufactured containers.

In India, storage tanks operate under no (or very little) pressure,
distinguishing them from pressure vessels. Storage tanks are often cylindrical
in shape, perpendicular to the ground with flat bottoms, and a fixed frangible
or floating roof. There are usually many environmental regulations applied to
the design and operation of storage tanks, often depending on the nature of the
fluid contained within. Above-ground storage tanks (ASTs) differ from
underground storage tanks (USTs) in the kinds of regulations that are applied.
Above ground storage tanks can be used to hold materials such as petroleum,
waste matter, water, chemicals, and other hazardous materials, all while meeting
strict industry standards and regulations.

Reservoirs can be covered, in which case they may be called covered or
underground storage tanks or reservoirs. Covered water tanks are common in urban
areas.

Storage tanks are available in many shapes: vertical and horizontal cylindrical;
open top and closed top; flat bottom, cone bottom, slope bottom and dish bottom.
Large tanks tend to be vertical cylindrical, or to have rounded corners
transition from vertical side wall to bottom profile, to easier withstand
hydraulic hydrostatically induced pressure of contained liquid. Most container
tanks for handling liquids during transportation are designed to handle varying
degrees of pressure.

Since most liquids can spill, evaporate, or seep through even the smallest
opening, special consideration must be made for their safe and secure handling.
This usually involves building a bundling, or containment dike, around the tank,
so that any leakage may be safely contained.

Some storage tanks need a floating roof in addition to or in lieu of the fixed
roof and structure. This floating roof rises and falls with the liquid level
inside the tank, thereby decreasing the vapor space above the liquid level.
Floating roofs are considered a safety requirement as well as a pollution
prevention measure for many industries including petroleum refining.

Tanks for a particular fluid are chosen according to the flash-point of that
substance. Generally in refineries and especially for liquid fuels, there are
fixed roof tanks, and floating roof tanks.

1. Fixed roof tanks are meant for liquids with very high flash points, (e.g.
  fuel oil, water, bitumen etc.) Cone roofs, dome roofs and umbrella roofs are
  usual. These are insulated to prevent the clogging of certain materials,
  wherein the heat is provided by steam coils within the tanks. Dome roof tanks
  are meant for tanks having slightly higher storage pressure than that of
  atmosphere (e.g. slop oil). 
2. Floating roof tanks are broadly divided into
  external floating roof tanks usually called floating roof tanks: FR Tanks) and
  internal floating roof types (IFR Tanks).

IFR tanks are used for liquids with low flash-points (e.g., ATF, MS. gasoline,
ethanol). These tanks are nothing but cone roof tanks with a floating roof
inside which travels up and down along with the liquid level. This floating roof
traps the vapor from low flash-point fuels. Floating roofs are supported with
legs or cables on which they rest. FR tanks do not have a fixed roof (it is open
in the top) and has a floating roof only. Medium flash point liquids such as
naphtha, kerosene, diesel, and crude oil are stored in these tanks.

One of the common types found in mining areas is the open roof type tank,
usually to store ore slurries. These are the easiest storage tanks to build.

A general storage vessel is shown in the design section (@fig:storageMDEA).

![MDEA storage vessel](img/storageMDEA.jpg){#fig:storageMDEA}

## Materials

While steel and concrete remain one of the most popular choices for tanks,
glass-reinforced plastic, thermoplastic and polyethylene tanks are increasing in
popularity. They offer lower build costs and greater chemical resistance,
especially for storage of specialty chemicals. There are several relevant
standards, such as British Standard 4994 (1989), DVS (German Welding Institute
2205, and ASME (American Society of Mechanical Engineers) RTP-1 which give
advice on wall thickness, quality control procedures, testing procedures,
accreditation, fabrication and design criteria of final product. 
