\part{Material and Energy Balance}

# Preheater

## Material Balance

The data used is given in @tbl:PreheaterSour and @tbl:PreheaterSteam.

| Process Variable           | Value  (SI)           | Value (Industry)     |
| -------------------------- | --------------------- | -------------------- |
| Inlet Flow Velocity        | $615.74 \si{m^{3}/s}$ | $53.2 \si{MMSCMD}$   |
| Outlet Flow Velocity       | $609.68 \si{m^{3}/s}$ | $52.7 \si{MMSCMD}$   |
| Inlet Pressure             | $58.83 \si{bar}$      | $60 \si{kgf/cm^{2}}$ |
| Outlet Pressure            | $58.83 \si{bar}$      | $60 \si{kgf/cm^{2}}$ |
| Inlet Temperature          | $300.15 \si{K}$       | $27^{\circ}C$        |
| Outlet Temperature         | $305.15 \si{K}$       | $32^{\circ}C$        |
| Specific Heat Capacity     | $2100 \si{J/kg}$      | $2.1\si{kJ/kg}$      |
| Specific Gravity           | $0.717$               | -                    |
| Density                    | $717 \si{kg/m^{3}}$   | -                    |
| Amount Of Moisture Removed | $6000\si{kg/s}$       | $6 \si{m^{3}/s}$     |
Table: Sour Gas Data. {#tbl:PreheaterSour}

| Process Variable       | Value  (SI)           | Value (Industry) |
|------------------------|-----------------------|------------------|
| Inlet Temperature      | $533.15 \si{K}$       | $260^{\circ}C$   |
| Outlet Temperature     | $433.15 \si{K}$       | $160^{\circ}C$   |
| Specific Heat Capacity | $1900 \si{J/kg}$      | $1.9\si{kJ/kg}$  |
| Inlet Mass Flow Rate   | $60000 \si{kg/s}$     | -                |
| Density                | $0.693 \si{kg/m^{3}}$ | -                |
| Moisture Present       | -                     | $0.01\%$         |
Table: Steam Data. {#tbl:PreheaterSteam}

### Shell Side

Amount of sour gas entering $=$ Inlet Flow Velocity $\times$ Density

$$=615.74 \times 717 = 441.48 \times 10^3 \si{kg/s}$$

Amount of sour gas leaving $=$ Amount of sour gas entering $-$ Amount of moisture removed 

$$=615.74\times 10^3 - 6 = 609.74 \times 10^3\si{m^{3}/s}$$

Mass Flow rate = Volumetric Flow Rate $\times$ Density

$$=609.74 \times 717 = 437.18 \times10^3\si{kg/s}$$

### Tube Side

Amount of steam entering in tube side = Amount of steam leaving tube side $= 60000 \si{kg/s}$

## Energy Balance

Heat load of steam $= 60000 * 1.9 * 130 = 14,820,000 \si{J}$

Sensible heat of Sour gas $=$ Mass Flowrate $\times$ Specific Heat Capacity $\times \Delta T$

$$=441.48 \times 2.1 \times (32 - 27) = 4635.54 \si{J}$$

Sensible heat of moisture $=$ Mass Flowrate $\times$ Specific Heat Capacity $\times \Delta T$

$$=6000 \times 4.2 \times (100 - 27)=1839600 \si{J}$$

Latent heat of vaporization of moisture $=$ Mass Flowrate $\times$ Latent Heat of Water

$$=6000 \times 2176 = 13056000 \si{J}$$

Heat load from steam $=$ Sensible heat of sour gas $+$ Sensible heat of moisture $+$ Latent heat of vaporization of moisture $+$ heat losses

Heat losses $= 80235 \si{J}$

# Absorber

The data used is given in @tbl:Absorber

| Process Variable                         | Value              |
| ---------------------------------------- | ------------------ |
| Inlet flow rate of gas                   | $437.18 \si{kg/s}$ |
| Inlet concentration of hydrogen suphide  | $100 \si{ppm}$     |
| Outlet concentration of hydrogen suphide | $4 \si{ppm}$       |
| Inlet flow rate of lean amine            | $0.13 \si{kg/s}$   |
| Specific gravity of lean amine           | $1.0432$           |
| Specific heat of sour gas                | $2.1 \si{kJ/kg}$   |
| Specific heat of amine                   | $0.6 \si{kJ/kg}$   |
| Inlet temperature of lean MDEA           | $42^{\circ}C$      |
| Outlet temperature of rich MDEA          | $40^{\circ}C$      |
| Inlet temperature of sour gas            | $32^{\circ}C$      |

Table: Absorber Variables {#tbl:Absorber}

## Material Balance

$$\textnormal{IN} - \textnormal{OUT} = \textnormal{ACCUMULATION} + \textnormal{DISAPPEARANCE}$${eq:totalBal}

Since , $\textnormal{ACCUMULATION} = \textnormal{DISAPPEARANCE}=0$
Therefore , IN$=$OUT

Inlet Flowrate of gas $\times\Delta$ Concentration$=437.18\times (100 - 4)\times 10^{-6}$

$=$ Inlet Flowrate of Amine $\times\Delta$ Concentration

$$=(X-0)$$

Hence , Outlet concentration of rich amine $= X = 0.32$

## Energy Balance

Sensible heat of amine $=$ Mass Flowrate $\times$ Specific Heat Capacity $\times\Delta T$
$$=0.13 \times 0.6 \times (42 - 40) = 0.156 \si{J}$$

Sensible heat of sour gas $=$ Sensible heat of amine $= 0.156 \si{J}$

Thus, Outlet temperature of sour gas $= 32^{\circ}C$



# Stripper and Reboiler

The data used is given in @tbl:SR

| Process Variables                                         | Values            |
| --------------------------------------------------------- | ----------------- |
| Inlet flow rate of amine                                  | $0.13 \si{kg/s}$  |
| Inlet temperature of rich MDEA                            | $130^{\circ}C$    |
| Outlet temperature of lean MDEA                           | $100^{\circ}C$    |
| Flow rate of steam in the reboiler                        | $60000 \si{kg/s}$ |
| Inlet concentration of hydrogen sulphide in the rich MDEA | $0.32 \si{ppm}$   |
| Specific Heat of Amine                                    | $0.6 \si{kJ/kg}$  |

Table: Stripper and Reboiler Variables {#tbl:SR}

### Material balance

$$\textnormal{IN} - \textnormal{OUT} = \textnormal{ACCUMULATION} + \textnormal{DISAPPEARANCE}$${eq:totalBal}

Since , $\textnormal{ACCUMULATION} = \textnormal{DISAPPEARANCE}=0$
Therefore , IN$=$OUT

$0.13\times ( 0.32 - 0) = 60,000\times ( X - 0)$

$X = 0.7 \si{ppm}$

## Energy Balance

Sensible heat of amine $=$ Mass Flowrate $\times$ Specific Heat Capacity $\times\Delta T$

$$=0.13\times 0.6 \times (130 -100) = 2.34 \si{J}$$

Sensible heat of steam $=$ Sensible heat of amine $= 2.34 \si{J}$

Thus, Outlet temperature of steam $= 260^{\circ}C$

# Overall  Balances

## Material Balance

| Variables                           | Values                                             |
| ----------------------------------- | -------------------------------------------------- |
| Inlet capacity of sour gas          | $615.74 \si{m^{3}/s}$         ($53.2 \si{MMSCMD}$) |
| Amount of hydrogen sulphide removed | $0.06 \si{m^{3}/s}$                                |
| Amount of Moisture removed          | $6 \si{m^{3}/s}$                                   |
| Outlet capacity of sweet gas        | $615.74 - 0.06 - 6=609.68\si{m^{3}/s}$             |
| Outlet capacity of sweet gas        | $52.67\si{MMSCMD}$                                 |
Table: Overall Material Balance. {#tbl:Overall}

## Energy Balance

This section is equivalent to energy balance done in the preheater section .
Since , all other equipments are completely insulated, therefore the overall energy balance suggests energy loss $= 80235 \si{J}$ 
