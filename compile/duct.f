C-----------------------------------------------------------------------
C  nek5000 user-file template
C
C  user specified routines:
C     - userbc : boundary conditions
C     - useric : initial conditions
C     - uservp : variable properties
C     - userf  : local acceleration term for fluid
C     - userq  : local source term for scalars
C     - userchk: general purpose routine for checking errors etc. 
C
C-----------------------------------------------------------------------

      subroutine uservp(ix,iy,iz,eg) ! set variable properties
      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

      integer e,f,eg
c     e = gllel(eg)

      udiff  = 0.0
      utrans = 0.0

      return
      end

c-----------------------------------------------------------------------

      subroutine userf(ix,iy,iz,ieg) 
      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'
      
      ffx = 0.0 
      ffy = 0.0
      ffz = 0.0

      return
      end

c-----------------------------------------------------------------------

      subroutine userq(ix,iy,iz,eg) ! set source term
      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

      integer e,f,eg
c     e = gllel(eg)

      qvol   = 0.0
      source = 0.0

      return
      end

c-----------------------------------------------------------------------

      subroutine userbc(ix,iy,iz,iside,ieg) 
      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'
      
      ux = 0.0
      uy = 0.0
      uz = 0.0 
      
      return
      end

c-----------------------------------------------------------------------

      subroutine useric(ix,iy,iz,ieg) ! set up initial conditions

      implicit none

      include 'SIZE_DEF'
      include 'SIZE'
      include 'NEKUSE_DEF'
      include 'NEKUSE'
      include 'PARALLEL_DEF'
      include 'PARALLEL'

      integer ix,iy,iz,ieg
      real a,s

      ux = 0.
      uy = 0.
      uz = 3.0*(2.0-x**2-y**2)/4.0

      s = 1.0


      call random_number(a)
      a=a-0.5
      ux=ux+s*a

      call random_number(a)
      a=a-0.5
      uy=uy+s*a

      call random_number(a)
      a=a-0.5
      uz=uz+s*a
      
      return
      end

c-----------------------------------------------------------------------

      subroutine userchk()

      implicit none

      include 'SIZE_DEF'      
      include 'SIZE'
      include 'GEOM_DEF'
      include 'GEOM'                    ! xm1, ym1, zm1
      include 'SOLN_DEF'
      include 'SOLN'                    ! T
      include 'MASS_DEF'
      include 'MASS'                    !BM1 for lambda2
      include 'TSTEP_DEF'
      include 'TSTEP'                   ! ISTEP
      include 'INPUT_DEF'
      include 'INPUT'                   ! PARAM(12) (DT)
      include 'USERPAR'                 ! l2freq, FIXGEOM, NEW_DT

      call checkpoint                   ! Restart check
      call stat_avg

      
      return
      end
      
c-----------------------------------------------------------------------
      
      subroutine usrdat()
c     Read user-defined boundary conditions into a common array bocoarray
c     Read input data for fringe region

      include 'SIZE'

c     variables used for user-defined boundary conditions

      real dum(3)

!      call user_param
      call uprm_read            ! New user parameter read function
      
      return
      end
      
c-----------------------------------------------------------------------

      subroutine usrdat2()  
      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'
     
      return
      end

c-----------------------------------------------------------------------
      
      subroutine usrdat3()
      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

      return
      end
c---------------------------------------------------------------------- 
c
c automatically added by makenek
      subroutine usrsetvert(glo_num,nel,nx,ny,nz) ! to modify glo_num
      integer*8 glo_num(1)
      return
      end

C=======================================================================

