# Material \& Energy Balance

## Around Preheater

The data used is given in @tbl:PreheaterSour and @tbl:PreheaterSteam.

| Process Variable       | Value  (SI)           | Value (Industry)     |
|------------------------|-----------------------|----------------------|
| Inlet Flow Velocity    | $615.74 \si{m^{3}/s}$ | $53.2 \si{MMSCMD}$   |
| Outlet Flow Velocity   | $609.68 \si{m^{3}/s}$ | $52.7 \si{MMSCMD}$   |
| Inlet Pressure         | $58.83 \si{bar}$      | $60 \si{kgf/cm^{2}}$ |
| Outlet Pressure        | $58.83 \si{bar}$      | $60 \si{kgf/cm^{2}}$ |
| Inlet Temperature      | $300.15 \si{K}$       | $27^{\circ}C$        |
| Outlet Temperature     | $305.15 \si{K}$       | $32^{\circ}C$        |
| Specific Heat Capacity | $2100 \si{J/kg}$      | $2.1\si{kJ/kg}$      |
| Specific Gravity       | $0.717$               | -                    |
| Density                | $717 \si{kg/m^{3}}$   | -                    |
Table: Sour Gas Data. {#tbl:PreheaterSour}

| Process Variable       | Value  (SI)           | Value (Industry)    |
|------------------------|-----------------------|---------------------|
| Inlet Temperature      | $533.15 \si{K}$       | $260^{\circ}C$ |
| Specific Heat Capacity | $1900 \si{J/kg}$      | $1.9\si{kJ/kg}$     |
| Inlet Mass Flow Rate   | $60000 \si{kg/s}$     | -                   |
| Density                | $0.693 \si{kg/m^{3}}$ | -                   |
| Moisture Present       | -                     | $0.01\%$            |
Table: Steam Data. {#tbl:PreheaterSteam}

The general equation used is a simple balance equation of the form given in
@eq:balanceNet.

$$\textnormal{M}_{in}-{M}_{out} = \textnormal{M}_{a}$${#eq:balanceNet}

Where:

* $\textnormal{M}$ is the material
* $[]_{in}$ is the material flowing into the system
* $[]_{out}$ is the material flowing out of the system
* $[]_{a}$ is the material accumulated

From the above we show simply that for the shell side, the amount of sour gas
entering is given by @eq:sourIn

$$M_{S_{in}}=615.74 \times 0.717 = 441.48 \si{kg/s} $${#eq:sourIn}

Where: 

* $M_{S_{in}}$ is the amount of sour gas entering

Also we note that:

* The amount of moisture removed is $6\si{m^{3}/s}$ or $6000\si{kg/s}$

From @eq:balanceMois analogous to @eq:balanceNet we note that: 

$$ M_{S_{out}}=M_{S_{in}} - M_{mmr} $${#eq:balanceMois}

Where:

* $M_{S_{in}}$ is the amount of sour gas entering
* $M_{S_{out}}$ is the amount of sour gas leaving
* $M_{mmr}$ is the amount of moisture removed

Hence from @eq:balanceMois we assert that the amount of sour gas leaving is
given by @eq:sourLeaves1 and @eq:sourLeaves2.

$$615.74-0.06=609.74\si{m^3/s}$${#eq:sourLeaves1}

$$609.74\times 0.717 = 437.18\si{kg/s}$${#eq:sourLeaves2}

Finally we note that in the tube side we have no accumulation so:

$$M_{st_{in_{t}}}-M_{st_{out_{t}}}=0 $${#eq:steamLeaves}

Where:

* $M$ is the material
* $[]_{st}$ asserts that the material is steam
* $M_{st_{in_{t}}}$ is the steam entering on the tube side
* $M_{st_{out_{t}}}$ is the steam leaving on the tube side

Hence the steam flow is constant at $60000 \si{kg/s}$


