! module fortran2008_params
!   ! Fortran 2008 stuff
!   use, intrinsic :: iso_fortran_env
!   implicit none
!   integer, parameter :: sp = REAL32
!   integer, parameter :: dp = REAL64
!   integer, parameter :: qp = REAL128
!   save
! end module fotran2008_params
! For real(dp), implement later

module shell_vars

  ! Shell variables
  character(len=30) :: shell_fluid
  integer :: shell_passes, shell_baffles, shell_number
  real :: shell_flow_area, shell_inside_dia, shell_tube_clearance, &
  shell_specific_heat, shell_viscosity, shell_fluid_density, &
  shell_conductivity
  real :: shell_baffle_spacing, shell_fouling_factor, shell_inlet_temperature,&
  shell_outlet_temperature, shell_flowrate
save
end module shell_vars

module tube_vars

  ! Tube Variables
  character(len=30) :: tube_fluid
  character(len=1)  :: tube_pitch_type
  integer :: tube_number, tube_passes
  real :: tube_pitch, tube_outer_dia, tube_inside_dia, &
   tube_specific_heat, tube_viscosity, tube_fluid_density, tube_conductivity, &
   tube_flow_area, tube_mass_flow, tube_reynolds
  real :: tube_length, tube_fouling_factor, tube_inlet_temperature, &
   tube_outlet_temperature, tube_flowrate
  save
end module tube_vars

! module vars_mod

!       character :: FTS, FSS, TYPE
!       COMMON/TUBE2/ NT, TID, TOD, TP, TL, TNP
!       COMMON/TUBE3/ TFF, TT1, TT2, TSHC, TVIS, TDEN
!       COMMON/TUBE4/ TFK, TW
!       COMMON/TUBE5/ RET, PRT, TFRF, HT, TV
!       COMMON/TUBE6/ TDELP, TRDELP, TOTDP
!       COMMON/SHELL1/ FSS
!       COMMON/SHELL2/ NS, SID, NB, BSP, SFF
!       COMMON/SHELL3/ TS1, TS2, SSHC, SVIS, SDEN
!       COMMON/SHELL4/ SFK, SW
!       COMMON/SHELL5/ RES, PRS, SFRF, HS, SV
!       COMMON/SHELL6/ SDELP

!       real(dp) :: Q, AREA, F, LMTD, U, Q1, CMTD, NT, NS, NB
!   save
! end module vars_mod

module parms_mod
  implicit none
    double precision, parameter :: pi = 3.141592653589d0, &
    G = 32.174d0
  save
end module parms_mod

PROGRAM main
!   ******************************************************************
!   Updated to f90 by Amrita Goswami and Rohit Goswami.
!   THIS PROGRAM RATES A SHELL AND TUBE HEAT EXCHANGER WITH
!   EITHER A SINGLE SHELL PASS AND ANY MULTIPLE OF TWO TUBE
!   PASSES PR TWO OR MORE SHELL PASSES.
!   THE PROGRAM ASSUMES THAT THERE IS NO CHANGE OF PHASE.
!
!   THE PROGRAM USES DEVELOPED CORRELATIONS FOR FRICTION FACTORS
!   IN BOTH THE SHELL AND TUBE SIDES. HEDRICK'S CORRELATION
!   (Chem. Eng. June, 1990) FOR ESTIMATING THE HEAT TRANSFER
!   COEFFICIENT FOR TUBES IN THE TRANSITION REGION IS EMPLOYED
!   IN THE PROGRAM
!   ******************************************************************
!
!   NOMENCLATURE:               TUBE SIDE
!
!   1.    FLUID TYPE                                =     tube_fluid
!   2.    NUMBER OF TUBES                           =     tube_number
!   3.    TUBE INSIDE DIA., inch                    =     tube_inside_dia
!   4.    TUBE OUTSIDE DIA., inch                   =     tube_outside_dia
!   5.    TUBE PITCH, inch                          =     tube_pitch
!   6.    PITCH TYPE (TRIANGLE/SQUARE)              =     T/S  (tube_pitch_type)
!   7.    TUBE LENGTH, ft.                          =     tube_length
!   8.    NUMBER OF PASSES                          =     tube_passes
!   9.    FOULING FACTOR                            =     tube_fouling_factor
!   10.   INLET TEMPERATURE, oF                     =     tube_inlet_temperature
!   11.   OUTLET TEMPERATURE, oF                    =     tube_outlet_temperature
!   12.   SPECIFIC HEAT CAPACITY (Btu/lboF)         =     tube_specific_heat
!   13.   VISCOSITY, cP                             =     tube_viscosity
!   14.   DENSITY, lb/ft^3                          =     tube_fluid_density
!   15.   FLUID THERMAL CONDUCTIVITY (Btu/ft.h.oF)  =     tube_conductivity
!   16.   MASS FLOWRATE, lb/hr                      =     tube_flowrate
!
!   NOMENCLATURE:             SHELL SIDE
!
!   1.    FLUID TYPE                                =     shell_fluid
!   2.    NUMBER OF SHELL PASSES                    =     shell_passes
!   3.    SHELL INSIDE DIA., inch                   =     shell_inside_dia
!   4.    NUMBER OF BAFFLES                         =     shell_baffles
!   5.    BAFFLE SPACING, inch                      =     shell_baffle_spacing
!   6.    FOULING FACTOR                            =     shell_fouling_factor
!   7.    INLET TEMPERATURE, oF                     =     shell_inlet_temperature
!   8.    OUTLET TEMPERATURE, oF                    =     shell_outlet_temperature
!   9.    SPECIFIC HEAT CAPACITY (Btu/lboF)         =     shell_specific_heat
!   10.   VISCOSITY, cP                             =     shell_viscosity
!   11.   DENSITY, lb/ft^3                          =     shell_fluid_density
!   12.   FLUID THERMAL CONDUCTIVITY (Btu/ft.h.oF)  =     shell_conductivity
!   13.   MASS FLOWRATE, lb/hr                      =     shell_flowrate
!   ******************************************************************

    use shell_vars
    use tube_vars

      OPEN (UNIT = 3, FILE = 'DATA82.DAT', STATUS ='OLD', ERR = 18)
      OPEN (UNIT = 1, FILE = 'PRN')

!   READ THE TUBE SIDE HEAT EXCHANGER PARAMETERS

!   READ THE FLUID TYPE: tube_fluid

      READ (3, 11, ERR = 19) tube_fluid
   11 FORMAT (A)

!   READ THE NUMBER OF TUBES: tube_number
!   READ THE TUBE INSIDE DIAMETER, inch : tube_inside_dia
!   READ THE TUBE OUTSIDE DIAMETER, inch : tube_outside_dia
!   READ THE TUBE PITCH, inch : tube_pitch
!   READ THE TYPE OF PITCH (TRIANGULAR: T) or (SQUARE: S): tube_pitch_type

      READ (3, *, ERR= 19) tube_number, tube_inside_dia, tube_outside_dia, tube_pitch
      READ (3, 12, ERR= 19) tube_pitch_type
   12 FORMAT   (A)

!   READ THE TUBE LENGTH, ft. : tube_length
!   READ THE NUMBER OF PASSES : tube_passes
!   READ THE TUBE SIDE FOULING FACTOR : tube_fouling_factor
!   READ THE INLET TEMPERATURE, oF : tube_inlet_temperature
!   READ THE OUTLET TEMPERATURE, oF : tube_outlet_temperature
!   READ THE SPECIFIC HEAT CAPACITY OF FLUID, (Btu/hr.ft.oF) : tube_conductivity
!   READ THE FLUID VISCOSITY, cP : tube_viscosity
!   READ THE FLUID DENSITY, lb/ft^3 : tube_fluid_density
!   READ THE FLUID FLOWRATE, lb/hr.: tube_flowrate

      READ (3, *, ERR=19) tube_length, tube_passes, tube_fouling_factor, tube_inlet_temperature
      READ (3, *, ERR=19) tube_outlet_temperature, tube_specific_heat, tube_viscosity, tube_fluid_density
      READ (3, *, ERR=19) tube_conductivity, tube_flowrate

!   READ THE SHELL SIDE HEAT EXCHANGER PARAMETERS

!   READ THE FLUID TYPE: shell_fluid

      READ (3, 13, ERR=19) shell_fluid

   13 FORMAT   (A)

!   READ THE NUMBER OF SHELL: shell_passes
!   READ THE SHELL SIDE INSIDE DIAMETER, inch: shell_inside_dia
!   READ THE NUMBER OF BAFFLES: shell_baffles
!   READ THE BAFFLE SPACING, inch: shell_baffle_spacing
!   READ THE SHELL SIDE FOULING FACTOR, shell_fouling_factor
!   READ THE INLET TEMPERATURE, oF: TSI
!   READ THE OULET TEMPERATURE, oF: shell_outlet_temperature
!   SHELL SIDE SPECIFIC HEAT CAPACITY, Btu/ib.oF.: shell_specific_heat
!   READ THE FLUID VISCOSITY, cP: shell_viscosity
!   READ THE FLUID DENSITY, ib/ft^3.: shell_fluid_density
!   READ THE FLUID THERMAL CONDUCTIVITY, Btu/hr.ft.oF.: shell_conductivity
!   READ THE FLUID FLOWRATE, ib/hr.: shell_flowrate.

      READ (3, *, ERR=19) shell_passes, shell_inside_dia, shell_baffles, shell_baffle_spacing
      READ (3, *, ERR=19) shell_fouling_factor, shell_inlet_temperature, shell_outlet_temperature, shell_specific_heat
      READ (3, *, ERR=19) shell_viscosity, shell_fluid_density, shell_conductivity, shell_flowrate

      GO TO 15

   18 WRITE    (*, 20)
   20 FORMAT   (3X, 'ERROR MESSAGE IN THE DATA VALUE')
      GO TO 999
   19 WRITE    (*, 21)
   21 FORMAT   (3X, 'DATA VALUE DOES NOT EXIST')
      GO TO 999

!   TUBE SIDE CALCULATION

   15 CALL   TUBE

!   SHELL SIDE CALCULATION
      CALL SHELL
!   CALCULATE THE HEAT LOAD
      Q = tube_flowrate*tube_specific_heat*ABS(tube_outlet_temperature-tube_inlet_temperature)
!   CALCULATE THE LOG MEAN TEMPERATURE DIFFERENCE (LMTD)

      VAL1 = (shell_inlet_temperature-tube_outlet_temperature)-(shell_outlet_temperature-tube_inlet_temperature)
      VAL2 = ALOG((shell_inlet_temperature-tube_outlet_temperature)/(shell_outlet_temperature-tube_inlet_temperature))
      LMTD = ABS(VAL1/VAL2)
!   CALCULATE THE APPROACH FACTOR
      R = (shell_inlet_temperature-shell_outlet_temperature)/(tube_outlet_temperature-tube_inlet_temperature)
      P = (tube_outlet_temperature-tube_inlet_temperature) / (shell_inlet_temperature-tube_inlet_temperature)

      IF (shell_passes .EQ. 1.0 .AND. R .EQ. 1.0) THEN
        PX = P/(shell_passes-shell_passes*P+P)
        SUM1 = (PX*(R*R+1.0)**0.5)/(1.0-PX)
        SUM2 = 2.0/PX-1.0-R+(R*R+1.0)**0.5
        SUM3 = 2.0/PX-1.0-R-(R*R+1.0)**0.5
        SUM4 = ALOG(SUM2/SUM3)
        F = SUM1/SUM4
        GO TO 100
      ELSEIF (shell_passes .EQ. 1.0 .AND. R .GT. 1.0) THEN
   55   SUM5 = ((R*P-1.0)/(P-1.0))**(1.0/shell_passes)
        PX = (1.0-SUM5)/(R-SUM5)
        SUM6 = (R*R+1.0)**0.5/(R-1.0)
        SUM7 = ALOG((1.0-PX)/(1.0-R*PX))
        SUM41 = ((2.0/PX)-1.0-R+(R*R+1.0)**0.5)
        SUM42 = ((2.0/PX)-1.0-R-(R*R+1.0)**0.5)
!   Broken IF maybe. (dangling)

      IF (SUM41 .LT. 0.0 .OR. SUM42 .LT. 0.0) THEN
        shell_passes = shell_passes+1.
        tube_passes = tube_passes+2.
        GO TO 55
        ELSE
        SUM43 = ALOG(SUM41/SUM42)
      ENDIF

      F = (SUM6*SUM7)/SUM43

      IF (F .LT. 0.8) THEN
        shell_passes = shell_passes+1.0
        tube_passes = tube_passes+2.
        GO TO 55
        ELSE
        END IF

      GO TO 100

      ELSEIF (shell_passes .GE. 2.0 .AND. tube_number .GE. 4.0) THEN
        SUM8 = (R*R+1.0)**0.5/(2.0*(R-1.0))
        SUM9 = ALOG((1.0-P)/(1.0-P*R))
        SUM10 = 2/P-1.0-R+((2/P)*((1.0-P)*(1-P*R))**0.5)+(R*R+1.)**0.5
        SUM11 = 2/P-1.0-R+((2/P)*((1.0-P)*(1.-P*R))**0.5)-(R*R+1.)**0.5

        F = (SUM8*SUM9)/ALOG(SUM10/SUM11)
      ENDIF

!   CORRECTED MEAN TEPERATURE

  100 CMTD=F*LMTD

! CALCULATE THE OVERALL HEAT TRANSFER COEFFICIENT
! Btu/hr.ft^2.oF

      U = 1.0/(1./HT+1./HS+tube_fouling_factor+shell_fouling_factor)

!   CALCULATE THE OUTSIDE AREA OF THE HEAT EXCHANGER UNIT ft^2

      AREA=(tube_outside_dia/12.0*tube_pitch*tube_number*shell_passes*tube_length)

      Q1 = AREA*U*CMTD
      CALL RESULT

!   FORM FEED THE PRINTING PAPER TO TOP OF THE NEXT PAGE.

      WRITE (1, *) CHAR(12)

      CLOSE (UNIT=3, STATUS='KEEP')
      CLOSE (UNIT=1)
  999 STOP
      END




!   *THIS PROGRAM CALCULATES TUBE TUBE SIDE HEAT TRANSFER COEFFICIENT,
!   * REYNOLDS NUMBER, PRANDTL NUMBER, FRICTION FACTOR AND PRESSURE DROP

      SUBROUTINE TUBE
    use shell_vars
    use tube_vars
    use parms_mod

!   CALCULATE THE FLOW AREA: tube_flow_area, ft^2

      tube_flow_area = (pi*tube_inside_dia**2*tube_number)/(4.0*144.0*tube_passes)

!   CALCULATE THE MASS VELOCITY, ib/hr.ft^2

      tube_mass_flow = tube_flowrate/tube_flow_area

! CALCULATE THE REYNOLDS NUMBER: tube_reynolds

      tube_reynolds = (tube_mass_flow*tube_inside_dia)/(12.0*2.42*tube_viscosity)

!   CALCULATE THE PRANDTL NUT[BER: PRT

      PRT = (tube_specific_heat*tube_viscosity*2.42)/tube_conductivity


!   CHECK THAT THE REYNOLDS NUMBER IS IN THE TRANSITION REGION
!   (i.e. 2000<tube_reynolds<10,000)

      IF (tube_reynolds .GT. 2000.0 .AND. tube_reynolds .LT. 10000.0) THEN
        X1 = tube_reynolds/1000.0
        X2 = 10.0*tube_inside_dia/tube_length
        X3 = (1.0-(X1/10.0)**0.256)
        X4 = X2**X3
        B1 = (-3.08+3.075*X1+(0.32567*X1**2)-(0.02185*X1**3))*X4
        HT = (16.1/tube_outside_dia)*(B1*tube_conductivity*PRT**0.33)
        GO TO 110

      ELSE IF (tube_reynolds .GT. 10000.0) THEN
        HT = 0.027*tube_conductivity*(12.0/tube_inside_dia)*(tube_reynolds**0.8)*(PRT**0.33)
      ENDIF

  110 HT    = HT*tube_inside_dia/tube_outside_dia

!   CALCULATE THE TUBE FRICTION FACTOR

      IF (tube_reynolds .GT. 1000.0) THEN
        TFRF = 0.0029/(tube_reynolds**0.25603)
      ELSE
      ENDIF

!   CALCULATE THE FLUID VELOCITY, ft./s.

      TV = tube_mass_flow/(3600.0*tube_fluid_density)

!   CALCULATE THE TUBE SIDE PRESSURE DROP, psi.

      TDELP = (TFRF*(tube_mass_flow/3600.0)**2*tube_length*tube_passes)/(2.0*G*tube_fluid_density*tube_inside_dia/12.0)

!   CALCULATE THE PRESSURE DROP OF RETURN LOSSES, psi.
!   USING FRANK'S CORRELATION.

      TRDELP = (2.5*tube_passes*tube_fluid_density*TV**2)/(2*G*144.0)

!   CALCULATE THE TOTAL PRESSURE DROP EXCLUDING THE NOZZLE IN THE
!   TUBE SIDE, psi.

      TOTDP = TDELP+TRDELP

      RETURN
      END




!   ****************************************************************
!   *THIS PROGRAM CALCULATES THE SHELL SIDE HEAT TRANSFER
!   *
!   *COEFFICIENT,
!   REYNOLDS NUMBER, PRANDTL NUMBER, FRICTION FACTOR *
!   *AND PRESSURE DROP.
!   *
!   ****************************************************************

      SUBROUTINE SHELL
    use shell_vars
    use tube_vars
    use parms_mod

!   CHECK WHETHER PITCH TYPE IS TRIANGULAR OR SQUARE

      IF (tube_pitch_type .EQ. 'T' .OR. tube_pitch_type .EQ. 't') THEN
        DE = ((1.72*tube_pitch**2)-(0.5*PI*tube_outside_dia**2))/(0.5*PI*12.0*tube_outside_dia)
        GO TO 120
      ELSE IF (tube_pitch_type .EQ. 'S' .OR. tube_pitch_type .EQ. 's') THEN
        DE = 4.*((tube_pitch**2)-(PI*tube_outside_dia**2/4.0))/(PI*12.0*tube_outside_dia)
      ENDIF

!   CALCULATE THE TUBE CLEARANCE, inch
  120    TC = tube_pitch-tube_outside_dia

!   CALCULATE THE SHELL FLOW AREA, ft^2.

      IF (shell_passes .GE. 2.0 .AND. tube_number .GE. 4.0) THEN
        SFA = (0.5*(shell_inside_dia*TC*shell_baffle_spacing))/(144.0*tube_pitch)
        GO TO 130
        ELSE
        SFA = (shell_inside_dia*TC*shell_baffle_spacing)/(144.0*tube_pitch)
      ENDIF

!   CALCULATE THE SHELL SUPERFICIAL FLOW RATE, Ib/ft^2.hr.
  130 GS = shell_flowrate/SFA

!   CALCULATE THE SHELL VELOCITY, ft./sec.
      SV = shell_flowrate/(3600.0*shell_fluid_density*SFA)

!   CALCULATE THE REYNOLDS NUMBER
      RES = (DE*GS)/(2.42*shell_viscosity)

!   CALCULATE THE PRANDTL NUMBER
      PRS = (2.42*shell_specific_heat*shell_viscosity)/shell_conductivity

!   CALCULATE THE SHELL SIDE HEAT TRANSFER COEFFICIENT
      HS = 0.36/DE*shell_conductivity*(RES**0.55)*(PRS**0.333)

!   CHECK WHETHER THE SHELL'S REYNOLDS NUMBER IS LESS OR GREATER
!   THAN 500
      IF (RES .LT. 500.0) THEN
        SFRF = 0.11183/(RES**0.59246)
        GO TO 140
      ELSEIF (RES .GT. 500.0) THEN
        SFRF = 0.01159/(RES**0.18597)
      ENDIF

!   CALCULATE THE SHELL SIDE PRESSURE DROP, psi.
  140 VAL1 = SFRF*(GS/3600.0)**2*shell_inside_dia/12.0*(shell_baffles+1.)
      VAL2 = 64.4*shell_fluid_density*DE
      SDELP = (VAL1/VAL2)*shell_passes

!

      RETURN
      END


!   ***************************************************************
!   THIS PROGRAM PRINTS THE RESULTS OF THE SHELL AND TUBE HEAT
!   EXCHANGER ONTO A PRINTER
!   ***************************************************************

      SUBROUTINE RESULT
      use parms_mod
      use shell_vars
      use tube_vars


      WRITE (1, 150)
  150 FORMAT (///,18X,'*SHELL AND TUBE HEAT EXCHANGER RATING*')

      WRITE (1, 160)
  160 FORMAT (78(1H*))

      WRITE (1, 170)
  170 FORMAT (40X,'TUBE SIDE',10X,'SHELL SIDE')

      WRITE (1, 180)
  180 FORMAT (78(1H-))

      WRITE (1, 190) tube_fluid, shell_fluid
  190 FORMAT (2X,'FLUID TYPE:',T40, A15, T60, A15)

      WRITE (1, 200) tube_flowrate, shell_flowrate
  200 FORMAT (2X,'FLUID FLOW RATE , lb/hr.:',T40, F10.0,T60,F10.0)

      WRITE (1, 210) tube_specific_heat, shell_specific_heat
  210 FORMAT (2X,'SPECIFIC HEAT CAPACITY, Btu/ib.oF:',T40, F8.3,T60,    &
     &     F8.3)

      WRITE (1, 220)tube_fluid_density, shell_fluid_density
  220 FORMAT (2X,'FLUID DENSITY, lb/ft^3:',T40,F8.3,T60,F8.3)

      WRITE (1, 230) tube_viscosity, shell_viscosity
  230 FORMAT (2X,'FLUID VISCOSITY, cP:',T40,F8.3,T60,F8.3)

      WRITE (1, 240) tube_conductivity, shell_conductivity
  240 FORMAT (2X,'FLUID THERMAL COND. Btu/ft.h.oF:',T40,F8.3,T60,F8.3)

      WRITE (1, 260) tube_outlet_temperature, shell_outlet_temperature
  260 FORMAT (2X,'FLUID OUTLET TEMPERATURE, oF:',T40,F8.0,T60,F8.0)

      WRITE (1, 270) tube_inside_dia, shell_inside_dia
  270 FORMAT (2X,'INSIDE DIAMETER, inch:',T40,F8.3,T60,F8.3)

      WRITE (1, 280) tube_outside_dia
  280 FORMAT (2X,'OUTSIDE DIAMETER, inch:',T40,F8.3)

      IF (tube_pitch_type .EQ. 'T' .OR. tube_pitch_type .EQ. 't') THEN
        WRITE (1, 290) tube_pitch_type
  290 FORMAT (2X,'TUBE PITCH, inch:',T40,F8.3,T60,'TRIANGULAR PITCH')
      ELSEIF (tube_pitch_type .EQ. 'S' .OR. tube_pitch_type .EQ. 's') THEN
        WRITE (1, 300) tube_pitch_type
  300 FORMAT (2X,'TUBE PITCH, inch:',T40,F8.3,T60,'SQUARE PITCH')
      ENDIF

      WRITE (1, 310) tube_length
  310 FORMAT (2X,'TUBE LENGTH, ft.:',T40,F8.3)

      WRITE (1, 315) tube_number
  315 FORMAT (2X,'NUMBER OF TUBES:', T40, F6.0)

      WRITE (1, 320) tube_passes, shell_passes
  320 FORMAT (2X,'NUMBER OF PASSES:',T40,F4.0,T60,F4.0)

      WRITE (1, 340) shell_baffles
  340 FORMAT (2X,'NUMBER OF BAFFLES:',T60,F4.0)

      WRITE (1, 350) shell_baffle_spacing
  350 FORMAT (2X,'BAFFLE SPACING, inch:',T60,F4.1)

      WRITE (1, 360) TV, SV
  360 FORMAT (2X,'FLUID VELOCITY, ft/sec.:',T40,F8.3,T60,F8.3)

      WRITE (1, 370) tube_reynolds, RES
  370 FORMAT (2X,'REYNOLDS NUMBER:',T40,F9.0,T60,F9.0)

      WRITE (1, 380) PRT, PRS
  380 FORMAT (2X,'PRANDTL NUMBER:',T40,F8.4,T60,F8.4)

      WRITE (1, 390) TFRF, SFRF
  390 FORMAT (2X,'FRICTION FACTOR (ft^2/in^2):',T40,F8.5,T60,F8.5)

      WRITE (1, 400) HT, HS
  400 FORMAT (2X,'HEAT COEFF., Btu/hr.ft^2.oF:',T40,F9.1,T60,F9.1)

      WRITE (1, 410) TOTDP, SDELP
  410 FORMAT (2X,'PRESSURE DROP, psi:',T40,F8.4,T60,F8.4)

      WRITE (1, 420) tube_fouling_factor, shell_fouling_factor
  420 FORMAT (2X,'FOULING FACTOR:',T40,F8.4,T60,F8.4)

      WRITE (1, 430) F
  430 FORMAT (2X,'APPROACH FACTOR, F:', T40, F8.4)

      WRITE (1, 440) LMTD
  440    FORMAT (2X,'LOG MEAN TEMP. DIFF. oF:',T40,F8.2)

      WRITE (1, 450) CMTD
  450    FORMAT (2X,'CORRECTED MEAN TEMP. DIFF. oF:',T40,F8.2)

      WRITE (1, 460) U
  460    FORMAT (2X,'OVERALL HEAT COEFF., Btu/hr.ft^2.oF:',T40,F9.1)

      WRITE (1, 470) AREA
  470    FORMAT (2X,'OUTSIDE AREA OF UNIT, ft^2:',T40,F9.1)

      WRITE (1, 480) Q
  480    FORMAT (2X,'HEAT LOAD ON UNIT, Btu/hr:',T40,F12.0)

      WRITE (1, 490) Q1
  490    FORMAT (2X,'HEAT TRANSFERRED, Btu/hr:',T40,F12.0)

      WRITE (1, 500)
  500    FORMAT (1H,78(1H-) )

!   FORM FEED THE PRINTING PAPER TO THE TOP OF THE NEXT PAGE.

      WRITE (1, *) CHAR(12)

      RETURN
      END
