module vars_mod

! Fortran 2008 stuff
use, intrinsic :: iso_fortran_env
integer, parameter :: sp = REAL32
integer, parameter :: dp = REAL64
integer, parameter :: qp = REAL128

      CHARACTER*30 FTS, FSS 
      CHARACTER TYPE 
!                                                                       
      COMMON/TUBE1/ FTS, TYPE 
      COMMON/TUBE2/ NT, TID, TOD, TP, TL, TNP 
      COMMON/TUBE3/ TFF, TT1, TT2, TSHC, TVIS, TDEN 
      COMMON/TUBE4/ TFK, TW 
      COMMON/TUBE5/ RET, PRT, TFRF, HT, TV 
      COMMON/TUBE6/ TDELP, TRDELP, TOTDP 
      COMMON/SHELL1/ FSS 
      COMMON/SHELL2/ NS, SID, NB, BSP, SFF 
      COMMON/SHELL3/ TS1, TS2, SSHC, SVIS, SDEN 
      COMMON/SHELL4/ SFK, SW 
      COMMON/SHELL5/ RES, PRS, SFRF, HS, SV 
      COMMON/SHELL6/ SDELP 
                                                                        
      real(dp) :: Q, AREA, F, LMTD, U, Q1, CMTD, NT, NS, NB 
  save
end module vars_mod

module parms_mod
  implicit none
    double precision, parameter :: pi = 3.141592653589d0, &
    G = 32.174d0
  save
end module parms_mod

PROGRAM PROG82 
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
!   1.    FLUID TYPE                                =     FTS           
!   2.    NUMBER OF TUBES                           =     NT            
!   3.    TUBE INSIDE DIA., inch                    =     TID           
!   4.    TUBE OUTSIDE DIA., inch                   =     TOD           
!   5.    TUBE PITCH, inch                          =     TP            
!   6.    PITCH TYPE (TRIANGLE/SQUARE)              =     T/S           
!   7.    TUBE LENGTH, ft.                          =     TL            
!   8.    NUMBER OF PASSES                          =     TNP           
!   9.    FOULING FACTOR                            =     TFF           
!   10.   INLET TEMPERATURE, oF                     =     TT1           
!   11.   OUTLET TEMPERATURE, oF                    =     TT2           
!   12.   SPECIFIC HEAT CAPACITY (Btu/lboF)         =     TSHC          
!   13.   VISCOSITY, cP                             =     TVIS          
!   14.   DENSITY, lb/ft^3                          =     TDEN          
!   15.   FLUID THERMAL CONDUCTIVITY (Btu/ft.h.oF)  =     TFK           
!   16.   MASS FLOWRATE, lb/hr                      =     TW            
!                                                                       
!   NOMENCLATURE:             SHELL SIDE                                
!                                                                       
!   1.    FLUID TYPE                                =     FSS           
!   2.    NUMBER OF SHELL PASSES                    =     NS            
!   3.    SHELL INSIDE DIA., inch                   =     SID           
!   4.    NUMBER OF BAFFLES                         =     NB            
!   5.    BAFFLE SPACING, inch                      =     BSP           
!   6.    FOULING FACTOR                            =     SFF           
!   7.    INLET TEMPERATURE, oF                     =     TS1           
!   8.    OUTLET TEMPERATURE, oF                    =     TS2           
!   9.    SPECIFIC HEAT CAPACITY (Btu/lboF)         =     SSHC          
!   10.   VISCOSITY, cP                             =     SVIS          
!   11.   DENSITY, lb/ft^3                          =     SDEN          
!   12.   FLUID THERMAL CONDUCTIVITY (Btu/ft.h.oF)  =     SFK           
!   13.   MASS FLOWRATE, lb/hr                      =     SW            
!   ******************************************************************  
    
    use vars_mod
                                                                        
      OPEN (UNIT = 3, FILE = 'DATA82.DAT', STATUS ='OLD', ERR = 18) 
      OPEN (UNIT = 1, FILE = 'PRN') 
                                                                        
!   READ THE TUBE SIDE HEAT EXCHANGER PARAMETERS                        
                                                                        
!   READ THE FLUID TYPE: FTS                                            
                                                                        
      READ (3, 11, ERR = 19) FTS 
   11 FORMAT (A) 
                                                                        
!   READ THE NUMBER OF TUBES: NT                                        
!   READ THE TUBE INSIDE DIAMETER, inch : TID                           
!   READ THE TUBE OUTSIDE DIAMETER, inch : TOD                          
!   READ THE TUBE PITCH, inch : TP                                      
!   READ THE TYPE OF PITCH (TRIANGULAR: T) or (SQUARE: S): TYPE         
                                                                        
      READ (3, *, ERR= 19) NT, TID, TOD, TP 
      READ (3, 12, ERR= 19) TYPE 
   12 FORMAT   (A) 
                                                                        
!   READ THE TUBE LENGTH, ft. : TL                                      
!   READ THE NUMBER OF PASSES : TNP                                     
!   READ THE TUBE SIDE FOULING FACTOR : TFF                             
!   READ THE INLET TEMPERATURE, oF : TT1                                
!   READ THE OUTLET TEMPERATURE, oF : TT2                               
!   READ THE SPECIFIC HEAT CAPACITY OF FLUID, (Btu/hr.ft.oF) : TFK      
!   READ THE FLUID VISCOSITY, cP : TVIS                                 
!   READ THE FLUID DENSITY, lb/ft^3 : TDEN                              
!   READ THE FLUID FLOWRATE, lb/hr.: TW                                 
                                                                        
      READ (3, *, ERR=19) TL, TNP, TFF, TT1 
      READ (3, *, ERR=19) TT2, TSHC, TVIS, TDEN 
      READ (3, *, ERR=19) TFK, TW 
                                                                        
!   READ THE SHELL SIDE HEAT EXCHANGER PARAMETERS                       
                                                                        
!   READ THE FLUID TYPE: FSS                                            
                                                                        
      READ (3, 13, ERR=19) FSS 
                                                                        
   13 FORMAT   (A) 
                                                                        
!   READ THE NUMBER OF SHELL: NS                                        
!   READ THE SHELL SIDE INSIDE DIAMETER, inch: SID                      
!   READ THE NUMBER OF BAFFLES: NB                                      
!   READ THE BAFFLE SPACING, inch: BSP                                  
!   READ THE SHELL SIDE FOULING FACTOR, SFF                             
!   READ THE INLET TEMPERATURE, oF: TSI                                 
!   READ THE OULET TEMPERATURE, oF: TS2                                 
!   SHELL SIDE SPECIFIC HEAT CAPACITY, Btu/ib.oF.: SSHC                 
!   READ THE FLUID VISCOSITY, cP: SVIS                                  
!   READ THE FLUID DENSITY, ib/ft^3.: SDEN                              
!   READ THE FLUID THERMAL CONDUCTIVITY, Btu/hr.ft.oF.: SFK             
!   READ THE FLUID FLOWRATE, ib/hr.: SW.                                
                                                                        
      READ (3, *, ERR=19) NS, SID, NB, BSP 
      READ (3, *, ERR=19) SFF, TS1, TS2, SSHC 
      READ (3, *, ERR=19) SVIS, SDEN, SFK, SW 
                                                                        
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
      Q = TW*TSHC*ABS(TT2-TT1) 
!   CALCULATE THE LOG MEAN TEMPERATURE DIFFERENCE (LMTD)                
                                                                        
      VAL1 = (TS1-TT2)-(TS2-TT1) 
      VAL2 = ALOG((TS1-TT2)/(TS2-TT1)) 
      LMTD = ABS(VAL1/VAL2) 
!   CALCULATE THE APPROACH FACTOR                                       
      R = (TS1-TS2)/(TT2-TT1) 
      P = (TT2-TT1) / (TS1-TT1) 
                                                                        
      IF (NS .EQ. 1.0 .AND. R .EQ. 1.0) THEN 
        PX = P/(NS-NS*P+P) 
        SUM1 = (PX*(R*R+1.0)**0.5)/(1.0-PX) 
        SUM2 = 2.0/PX-1.0-R+(R*R+1.0)**0.5 
        SUM3 = 2.0/PX-1.0-R-(R*R+1.0)**0.5 
        SUM4 = ALOG(SUM2/SUM3) 
        F = SUM1/SUM4 
        GO TO 100 
      ELSEIF (NS .EQ. 1.0 .AND. R .GT. 1.0) THEN 
   55   SUM5 = ((R*P-1.0)/(P-1.0))**(1.0/NS) 
        PX = (1.0-SUM5)/(R-SUM5) 
        SUM6 = (R*R+1.0)**0.5/(R-1.0) 
        SUM7 = ALOG((1.0-PX)/(1.0-R*PX)) 
        SUM41 = ((2.0/PX)-1.0-R+(R*R+1.0)**0.5) 
        SUM42 = ((2.0/PX)-1.0-R-(R*R+1.0)**0.5) 
!   Broken IF maybe. (dangling)                                         
                                                                        
      IF (SUM41 .LT. 0.0 .OR. SUM42 .LT. 0.0) THEN 
        NS = NS+1. 
        TNP = TNP+2. 
        GO TO 55 
        ELSE 
        SUM43 = ALOG(SUM41/SUM42) 
      ENDIF 
                                                                        
      F = (SUM6*SUM7)/SUM43 
                                                                        
      IF (F .LT. 0.8) THEN 
        NS = NS+1.0 
        TNP = TNP+2. 
        GO TO 55 
        ELSE 
        END IF 
                                                                        
      GO TO 100 
                                                                        
      ELSEIF (NS .GE. 2.0 .AND. NT .GE. 4.0) THEN 
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
                                                                        
      U = 1.0/(1./HT+1./HS+TFF+SFF) 
                                                                        
!   CALCULATE THE OUTSIDE AREA OF THE HEAT EXCHANGER UNIT ft^2          
                                                                        
      AREA=(TOD/12.0*TP*NT*NS*TL) 
                                                                        
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
      use parms_mod
      use vars_mod
                                         
!   CALCULTAE THE FLOW AREA: TFA, ft^2                                  
                                                                        
      TFA = (pi*TID**2*NT)/(4.0*144.0*TNP) 
                                                                        
!   CALCULATE THE MASS VELOCITY, ib/hr.ft^2                             
                                                                        
      GT = TW/TFA 
                                                                        
! CALCULATE THE REYNOLDS NUMBER: RET                                    
                                                                        
      RET = (GT*TID)/(12.0*2.42*TVIS) 
                                                                        
!   CALCULATE THE PRANDTL NUT[BER: PRT                                  
                                                                        
      PRT = (TSHC*TVIS*2.42)/TFK 
                                                                        
                                                                        
!   CHECK THAT THE REYNOLDS NUMBER IS IN THE TRANSITION REGION          
!   (i.e. 2000<RET<10,000)                                              
                                                                        
      IF (RET .GT. 2000.0 .AND. RET .LT. 10000.0) THEN 
        X1 = RET/1000.0 
        X2 = 10.0*TID/TL 
        X3 = (1.0-(X1/10.0)**0.256) 
        X4 = X2**X3 
        B1 = (-3.08+3.075*X1+(0.32567*X1**2)-(0.02185*X1**3))*X4 
        HT = (16.1/TOD)*(B1*TFK*PRT**0.33) 
        GO TO 110 
                                                                        
      ELSE IF (RET .GT. 10000.0) THEN 
        HT = 0.027*TFK*(12.0/TID)*(RET**0.8)*(PRT**0.33) 
      ENDIF 
                                                                        
  110 HT    = HT*TID/TOD 
                                                                        
!   CALCULATE THE TUBE FRICTION FACTOR                                  
                                                                        
      IF (RET .GT. 1000.0) THEN 
        TFRF = 0.0029/(RET**0.25603) 
      ELSE 
      ENDIF 
                                                                        
!   CALCULATE THE FLUID VELOCITY, ft./s.                                
                                                                        
      TV = GT/(3600.0*TDEN) 
                                                                        
!   CALCULATE THE TUBE SIDE PRESSURE DROP, psi.                         
                                                                        
      TDELP = (TFRF*(GT/3600.0)**2*TL*TNP)/(2.0*G*TDEN*TID/12.0) 
                                                                        
!   CALCULATE THE PRESSURE DROP OF RETURN LOSSES, psi.                  
!   USING FRANK'S CORRELATION.                                          
                                                                        
      TRDELP = (2.5*TNP*TDEN*TV**2)/(2*G*144.0) 
                                                                        
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
      use parms_mod
      use vars_mod
                                      
!   CHECK WHETHER PITCH TYPE IS TRIANGULAR OR SQUARE                    
                                                                        
      IF (TYPE .EQ. 'T' .OR. TYPE .EQ. 't') THEN 
        DE = ((1.72*TP**2)-(0.5*PI*TOD**2))/(0.5*PI*12.0*TOD) 
        GO TO 120 
      ELSE IF (TYPE .EQ. 'S' .OR. TYPE .EQ. 's') THEN 
        DE = 4.*((TP**2)-(PI*TOD**2/4.0))/(PI*12.0*TOD) 
      ENDIF 
                                                                        
!   CALCULATE THE TUBE CLEARANCE, inch                                  
  120    TC = TP-TOD 
                                                                        
!   CALCULATE THE SHELL FLOW AREA, ft^2.                                
                                                                        
      IF (NS .GE. 2.0 .AND. NT .GE. 4.0) THEN 
        SFA = (0.5*(SID*TC*BSP))/(144.0*TP) 
        GO TO 130 
        ELSE 
        SFA = (SID*TC*BSP)/(144.0*TP) 
      ENDIF 
                                                                        
!   CALCULATE THE SHELL SUPERFICIAL FLOW RATE, Ib/ft^2.hr.              
  130 GS = SW/SFA 
                                                                        
!   CALCULATE THE SHELL VELOCITY, ft./sec.                              
      SV = SW/(3600.0*SDEN*SFA) 
                                                                        
!   CALCULATE THE REYNOLDS NUMBER                                       
      RES = (DE*GS)/(2.42*SVIS) 
                                                                        
!   CALCULATE THE PRANDTL NUMBER                                        
      PRS = (2.42*SSHC*SVIS)/SFK 
                                                                        
!   CALCULATE THE SHELL SIDE HEAT TRANSFER COEFFICIENT                  
      HS = 0.36/DE*SFK*(RES**0.55)*(PRS**0.333) 
                                                                        
!   CHECK WHETHER THE SHELL'S REYNOLDS NUMBER IS LESS OR GREATER        
!   THAN 500                                                            
      IF (RES .LT. 500.0) THEN 
        SFRF = 0.11183/(RES**0.59246) 
        GO TO 140 
      ELSEIF (RES .GT. 500.0) THEN 
        SFRF = 0.01159/(RES**0.18597) 
      ENDIF 
                                                                        
!   CALCULATE THE SHELL SIDE PRESSURE DROP, psi.                        
  140 VAL1 = SFRF*(GS/3600.0)**2*SID/12.0*(NB+1.) 
      VAL2 = 64.4*SDEN*DE 
      SDELP = (VAL1/VAL2)*NS 
                                                                        
!                                                                       
                                                                        
      RETURN 
      END                                           
                                                                        
                                                                        
!   ***************************************************************     
!   THIS PROGRAM PRINTS THE RESULTS OF THE SHELL AND TUBE HEAT          
!   EXCHANGER ONTO A PRINTER                                            
!   ***************************************************************     
                                                                        
      SUBROUTINE RESULT 
      CHARACTER*30 FTS,FSS 
      CHARACTER TYPE 
                                                                        
      COMMON/TUBE1/ FTS, TYPE 
      COMMON/TUBE2/ NT, TID, TOD, TP, TL, TNP 
      COMMON/TUBE3/ TFF, TT1, TT2, TSHC, TVIS, TDEN 
      COMMON/TUBE4/ TFK, TW 
      COMMON/TUBES/ RET, PRT, TFRF, HT, TV 
      COMMON/TUBE6/ TDELP, TRDELP, TOTDP 
      COMMON/SHELL1/ FSS 
      COMMON/SHELL2/ NS, SID, NB, BSP, SFF 
      COMMON/SHELL3/ TS1, TS2, SSHC, SVIS, SDEN 
      COMMON/SHELL4/ SFK, SW 
      COMMON/SHELL5/ RES, PRS, SFRF, HS, SV 
      COMMON/SHELL6/ SDELP 
                                                                        
      COMMON/OUT/ Q, AREA, F, LMTD, U, Q1, CMTD 
                                                                        
      REAL NT, NS, NB, LMTD 
                                                                        
      WRITE (1, 150) 
  150 FORMAT (///,18X,'*SHELL AND TUBE HEAT EXCHANGER RATING*') 
                                                                        
      WRITE (1, 160) 
  160 FORMAT (78(1H*)) 
                                                                        
      WRITE (1, 170) 
  170 FORMAT (40X,'TUBE SIDE',10X,'SHELL SIDE') 
                                                                        
      WRITE (1, 180) 
  180 FORMAT (78(1H-)) 
                                                                        
      WRITE (1, 190) FTS, FSS 
  190 FORMAT (2X,'FLUID TYPE:',T40, A15, T60, A15) 
                                                                        
      WRITE (1, 200) TW, SW 
  200 FORMAT (2X,'FLUID FLOW RATE , lb/hr.:',T40, F10.0,T60,F10.0) 
                                                                        
      WRITE (1, 210) TSHC, SSHC 
  210 FORMAT (2X,'SPECIFIC HEAT CAPACITY, Btu/ib.oF:',T40, F8.3,T60,    &
     &     F8.3)                                                        
                                                                        
      WRITE (1, 220)TDEN, SDEN 
  220 FORMAT (2X,'FLUID DENSITY, lb/ft^3:',T40,F8.3,T60,F8.3) 
                                                                        
      WRITE (1, 230) TVIS, SVIS 
  230 FORMAT (2X,'FLUID VISCOSITY, cP:',T40,F8.3,T60,F8.3) 
                                                                        
      WRITE (1, 240) TFK, SFK 
  240 FORMAT (2X,'FLUID THERMAL COND. Btu/ft.h.oF:',T40,F8.3,T60,F8.3) 
                                                                        
      WRITE (1, 260) TT2, TS2 
  260 FORMAT (2X,'FLUID OUTLET TEMPERATURE, oF:',T40,F8.0,T60,F8.0) 
                                                                        
      WRITE (1, 270) TID, SID 
  270 FORMAT (2X,'INSIDE DIAMETER, inch:',T40,F8.3,T60,F8.3) 
                                                                        
      WRITE (1, 280) TOD 
  280 FORMAT (2X,'OUTSIDE DIAMETER, inch:',T40,F8.3) 
                                                                        
      IF (TYPE .EQ. 'T' .OR. TYPE .EQ. 't') THEN 
        WRITE (1, 290) TP 
  290 FORMAT (2X,'TUBE PITCH, inch:',T40,F8.3,T60,'TRIANGULAR PITCH') 
      ELSEIF (TYPE .EQ. 'S' .OR. TYPE .EQ. 's') THEN 
        WRITE (1, 300) TP 
  300 FORMAT (2X,'TUBE PITCH, inch:',T40,F8.3,T60,'SQUARE PITCH') 
      ENDIF 
                                                                        
      WRITE (1, 310) TL 
  310 FORMAT (2X,'TUBE LENGTH, ft.:',T40,F8.3) 
                                                                        
      WRITE (1, 315) NT 
  315 FORMAT (2X,'NUMBER OF TUBES:', T40, F6.0) 
                                                                        
      WRITE (1, 320) TNP, NS 
  320 FORMAT (2X,'NUMBER OF PASSES:',T40,F4.0,T60,F4.0) 
                                                                        
      WRITE (1, 340) NB 
  340 FORMAT (2X,'NUMBER OF BAFFLES:',T60,F4.0) 
                                                                        
      WRITE (1, 350) BSP 
  350 FORMAT (2X,'BAFFLE SPACING, inch:',T60,F4.1) 
                                                                        
      WRITE (1, 360) TV, SV 
  360 FORMAT (2X,'FLUID VELOCITY, ft/sec.:',T40,F8.3,T60,F8.3) 
                                                                        
      WRITE (1, 370) RET, RES 
  370 FORMAT (2X,'REYNOLDS NUMBER:',T40,F9.0,T60,F9.0) 
                                                                        
      WRITE (1, 380) PRT, PRS 
  380 FORMAT (2X,'PRANDTL NUMBER:',T40,F8.4,T60,F8.4) 
                                                                        
      WRITE (1, 390) TFRF, SFRF 
  390 FORMAT (2X,'FRICTION FACTOR (ft^2/in^2):',T40,F8.5,T60,F8.5) 
                                                                        
      WRITE (1, 400) HT, HS 
  400 FORMAT (2X,'HEAT COEFF., Btu/hr.ft^2.oF:',T40,F9.1,T60,F9.1) 
                                                                        
      WRITE (1, 410) TOTDP, SDELP 
  410 FORMAT (2X,'PRESSURE DROP, psi:',T40,F8.4,T60,F8.4) 
                                                                        
      WRITE (1, 420) TFF, SFF 
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
