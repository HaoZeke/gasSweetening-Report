
\part{Equipment Design}

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

For each equipment considered in this section we shall develop a brief theory of
associations and correlations, before demonstrating calculations for the same.

# Tall Tower Design Theory

The design of tall towers, here taken to be the mechanical design of the
absorption and stripping towers is crucial to the stable operation of the plant.
Hence we must first determine the concept of construction behind towers of large
scales.

## Theory of Tall Vertical Vessels 

Self supporting tall equipments are widely used in chemical process
industries. Tall vessels may or may not be designed to be self
supporting. Distillation column, fractionating columns, absorption
tower, multistage reactor, stacks, chimneys etc. comes under the
category of tall vertical vessels.

Design of self supporting vertical vessels is a relatively recent concept in
equipment design\sidenote{In earlier times high structure (i.e. tall vessels)
were supported or stabilized by the use of guy wires.} and it has been widely
accepted in the chemical industries because it is uneconomical to allocate
valuable space for the wires of guyed towers. In these units ratio of height to
diameter is considerably large due to that these units are often erected in the
open space, rendering them to wind action. Many of the units are provided with
insulation, number of attachments, piping system etc.

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

Here we consider the primary shell stresses as follow:

These are basically due to:

\begin{enumerate}[label=(\alph*)]
\item Circumferential stress, radial stress and axial stress due to internal
pressure or vacuum in the vessel
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
\item  compressive and tensile stress induced due to bending moment caused
    by wind load acting on the vessel and its attachments;
\item stress induced due to eccentric and irregular load from piping, platforms etc.
\item stress induced due to torque about longitudinal axis resulting from
    offset piping and wind loads and
\item stress resulting from seismic forces. Apart from that, always there
    are some residual stresses resulting due to methods of fabrication
    used like cold forming, bending, cutting, welding etc
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

\begin{align}
\label{eq:3}
f=\textnormal{stress}= \frac{P}{a} = \frac{pd}{4t} \\
\label{eq:4}
t= \frac{pd}{longIntP}
\end{align}

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
* $K_{2}$ coefficient depending upon the period of one cycle of vibration of the vessel\sidenote{$K_{2} = 1$, if period of vibration is $0.5$ seconds or less; $K_{2} = 2$, if period exceeds $0.5$ seconds}


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
\item expansion due to a rise in temperature (if prevented).\label{bullet:eLoad}\sidenote{Usually
these have provision for free expansion. Load due to this may be ignored.}
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

# Mechanical Design Of GSU Absorption Tower

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

Therefore we now assert the diameter is given by

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

