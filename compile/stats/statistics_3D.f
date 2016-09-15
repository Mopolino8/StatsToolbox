
      



c----------------------------------------------------------------------

!     Outpost of time-averaged fields
      subroutine stat_mfo_outfld3D()
      implicit none

      include 'SIZE_DEF'
      include 'SIZE'
      include 'STATS'           ! Statistics specific variables
      include 'INPUT_DEF'
      include 'INPUT'           ! if3d
      include 'SOLN_DEF'
      include 'SOLN'
            
!     Fields to outpost: <u>t, <v>t, <w>t, <p>t
      call outpost(STAT(1,1),STAT(1,2),STAT(1,3),pr,STAT(1,4),'s01')

!     Fields to outpost: <uu>t, <vv>t, <ww>t, <pp>t
      call outpost(STAT(1,5),STAT(1,6),STAT(1,7),pr,STAT(1,8),'s02')

!     Fields to outpost: <uv>t, <vw>t,<uw>t, <pu>t      
      call outpost(STAT(1,9),STAT(1,10),STAT(1,11),pr,STAT(1,12),'s03')

!     Fields to outpost: <pv>t, <pw>t, <pdudx>t, <pdudy>t
      call outpost(STAT(1,13),STAT(1,14),STAT(1,15),pr,STAT(1,16),'s04')
      
!     Fields to outpost: <pdudz>t, <pdvdx>t, <pdvdy>t, <pdvdz>t      
      call outpost(STAT(1,17),STAT(1,18),STAT(1,19),pr,STAT(1,20),'s05')

!     Fields to outpost: <pdwdx>t, <pdwdy>t, <pdwdz>t, <uuu>t
      call outpost(STAT(1,21),STAT(1,22),STAT(1,23),pr,STAT(1,24),'s06')

!     Fields to outpost:  <vvv>t, <www>t, <ppp>t, <uuv>t
      call outpost(STAT(1,25),STAT(1,26),STAT(1,27),pr,STAT(1,28),'s07')

!     Fields to outpost: <uuw>t, <vvu>t,  <vvw>t, <wwu>t
      call outpost(STAT(1,29),STAT(1,30),STAT(1,31),pr,STAT(1,32),'s08')

!     Fields to outpost:  <wwv>t, <uvw>t, <uuuu>t, <vvvv>t
      call outpost(STAT(1,33),STAT(1,34),STAT(1,35),pr,STAT(1,36),'s09')

!     Fields to outpost: <wwww>t, <pppp>t, <e11>t, <e22>t
      call outpost(STAT(1,37),STAT(1,38),STAT(1,39),pr,STAT(1,40),'s10')

!     Fields to outpost: <e33>t, <e12>t, <e13>t, <e23>t
      call outpost(STAT(1,41),STAT(1,42),STAT(1,43),pr,STAT(1,44),'s11')
      
      return
      end
      
c----------------------------------------------------------------------
      
