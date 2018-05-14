\part{Cost Analysis}

# Capital Cost and Economic Analysis

## Economic Overview
The economics of an industry is a most complicated topic, more suited to the
analysis by macroeconomics and labor economics.

That the overall profitability is determined by the various laws of scale as
determined by the microeconomic theories coming to fruition in our century from
the initial work of @marshall2013principles and @evensky2015adam.

## Capital Cost

Let us once again consider the plant layout given in @fig:osti.

![Plant layout from @osti_6399050](img/ethanoPlant.png){#fig:osti}

As noted in @peters2003plant and @couper2003process, the major contributions to
the capital cost are the process industry equipment average and the all industry
equipment average which forms the basis of the Marshall and Swift Cost Index,
originally the Marshall and Stevens Index, established in the year $1926$.

Another more pragmatic, industry agnostic cost index is that of the Chemical
Engineering Index, established in the 1960's with the major components being
listed in @tbl:CEI.

| Component                          | Weight Factor (\%) |
|------------------------------------|--------------------|
| Equipment, machinery, and supports |                 61 |
| Construction labor                 |                 22 |
| Building materials and labor       |                  7 |
| Engineering and supervision        |                 10 |
| Total                              |              $100$ |
Table: Major components of CE. {#tbl:CEI}

Having procured the relevant costs from the prevalent sources, we can then use a
simple cost correlation or a more complicated in house correlation which
involves local governments and other factors.

## Plant Costs

From our deep analysis of the process and it's material requirements we have
prepared the data listed in table below.

| Component   | Source                  | Cost                       |
|-------------|-------------------------|----------------------------|
| MDEA        | Sigma Aldrich (Merck)   | INR $36,084.47$ per $18$ L |
| SS340 Steel | MEPS International Ltd. | INR $34,000$               |
Table: Cost Data

The steel data is for Hot-Rolled Plates of $15-40\si{mm}$ thickness and width over $2.0\si{m}$.

### CEPCI Analysis

The preliminary value for the March CE Plant Cost Index(CEPCI; the most recent
value available) rose compared to the previous month's value, continuing a
string of six straight months of increasing values. All four of the major
subindices - Equipment, Construction Labor, Buildings and Engineering
\& Supervision - increased in March compared to their February values. The
preliminary overall monthly CEPCI value for March $2017$ stands at $5.0$\% higher than the corresponding value from March $2016$. Meanwhile the latest Current Business Indicators (CBI) saw a small rise in the CPI Output Index for April, while the March value for the CPI Value of Output declined slightly. The April Productivity Index decreased by a small margin.

The Index is shown in @fig:CEPCI.

![March 2017 Data](img/CEPCI.png){#fig:CEPCI}

# Profitability Theory

Investment decisions are often based upon several criteria, such as
annual return on investment (ROI), payback period (PBP), net present
value (NPV), the average rate of return (ARR), present value ratio (PVR),
or the internal rate of return (IRR). Discounted cash flow rate on return
(DCFRR) is another popular means of evaluating the economic viability of a
project.

To explain the computational aspect we shall describe various cash flow measures
here.

## Return on Investment

In engineering economic evaluation, rate of return on investment is
the percentage ratio of average yearly profit (net cash flow) over the
productive life of the project, divided by the total initial investment.
This is calculated after income taxes have been deducted from the gross
or pre-tax income. The remainder or net income may be used either for
paying dividends, reinvestment, or can be spent for other means. ROI is
defined by @eq:roi.

$$ ROI = \frac{\textnormal{Annual return}}{\textnormal{Investment}}\times 100$${#eq:roi}

The annual return may be the gross income, net pre-tax income, net after-tax
income, cash flow, or profit. These may be calculated for one particular year or
as an average over the project life. Investment may be the original total
investment, depreciated book-value investment, life-time average investment,
fixed capital investment, or equity investment. The investment includes working
capital and sometimes capitalized expenses such as interest on capital during
construction.

## Payback Period 

Payback period is widely used when long-term cash flows are difficult
to forecast, because no information is required beyond the break-even point.
It may be used for preliminary evaluation or as a project screening device
for high risk projects in times of uncertainty. Payback period is usually
measured as the time from the start of production to recovery of the capital
investment. The payback period is the time taken for the cumulative net
cash flow from start-up of the plant to equal the depreciable fixed capital
investment $(C_{FC} - S)$. It is the value of $t$ that satisfies @eq:pbp.

$$\sum_{t=0}^{t=\textnormal{PBP}}C_{CF}=(C_{FC}-S)$${#eq:pbp}

Where:

* $C_{CF}$ is the net annual cash flow
* $C_{FC}$ is the fixed capital cost
* $S$ is the salvage value

### Breakeven Point
The payback period is amenable to being calculated by means of a digital
computer and a sample labeled figure for understanding graphs generated in this
manner is given by @fig:cashFlowPBP.

![Cumulative cash flow diagram](img/cashFlowPBP.png){#fig:cashFlowPBP}

@fig:cashFlowPBP shows the cumulative cash flow diagram for a project. The PBP
is the time that elapses from the start of the project, A, to the break-even
point, E, where the rising part of the curve passes the zero cash position line.
The PBP thus measures the time required for the cumulative project investment
and other expenditure to be balanced by the cumulative income.

## Present Worth

In an economic evaluation of a project, it is often necessary to evaluate the present value of funds that will be received at some definite time
in the future. The present value (PV) of a future amount can be considered as the present principal at a given rate and compounded to give the
actual amount received at a future date. The relationship between the
indicated future amount and the present value is determined by a discount factor. Discounting evaluates each year's flow on an equal basis.
It does this by means of the discount, or present value factor, and the
reciprocal of the compound interest factor $(1 + i)^n$ with

$i$ is the interest rate
$n$ is the year in which the interest is compounded

The discount factor $(D_{F})$ is given by @eq:discountFact

$$ D_F= \frac{1}{1+i}^{n} $${#eq:discountFact}

If $C_n$ represents the amount available after $n$ interest periods, $P$ is the
initial principal and the discreet compound interest rate is $i$. The present
value, $PV$, can be expressed as shown in @eq:pv.


$$PV=P=\frac{C_n}{(1+i)^n} $${#eq:pv}

