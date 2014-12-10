! ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
!
      SUBROUTINE CH(NM,N,AR,AI,W,MATZ,ZR,ZI,FV1,FV2,FM1,IERR)
      use type_module
        implicit real(kind=r8_kind) (a-h,o-z)
!
      INTEGER(kind=i4_kind) I,J,N,NM,IERR,MATZ
      real(kind=r8_kind) AR(NM,N),AI(NM,N),W(N),ZR(NM,N),ZI(NM,N), &
      FV1(N),FV2(N),FM1(2,N)
!
!     THIS SUBROUTINE CALLS THE RECOMMENDED SEQUENCE OF
!     SUBROUTINES FROM THE EIGENSYSTEM SUBROUTINE PACKAGE (EISPACK)
!     TO FIND THE EIGENVALUES AND EIGENVECTORS (IF DESIRED)
!     OF A COMPLEX HERMITIAN MATRIX.
!
!     ON INPUT
!
!        NM  MUST BE SET TO THE ROW DIMENSION OF THE TWO-DIMENSIONAL
!        ARRAY PARAMETERS AS DECLARED IN THE CALLING PROGRAM
!        DIMENSION STATEMENT.
!
!        N  IS THE ORDER OF THE MATRIX  A=(AR,AI).
!
!        AR  AND  AI  CONTAIN THE REAL AND IMAGINARY PARTS,
!        RESPECTIVELY, OF THE COMPLEX HERMITIAN MATRIX.
!
!        MATZ  IS AN INTEGER VARIABLE SET EQUAL TO ZERO IF
!        ONLY EIGENVALUES ARE DESIRED.  OTHERWISE IT IS SET TO
!        ANY NON-ZERO INTEGER FOR BOTH EIGENVALUES AND EIGENVECTORS.
!
!     ON OUTPUT
!
!        W  CONTAINS THE EIGENVALUES IN ASCENDING ORDER.
!
!        ZR  AND  ZI  CONTAIN THE REAL AND IMAGINARY PARTS,
!        RESPECTIVELY, OF THE EIGENVECTORS IF MATZ IS NOT ZERO.
!
!        IERR  IS AN INTEGER OUTPUT VARIABLE SET EQUAL TO AN ERROR
!           COMPLETION CODE DESCRIBED IN THE DOCUMENTATION FOR TQLRAT
!           AND TQL2.  THE NORMAL COMPLETION CODE IS ZERO.
!
!        FV1, FV2, AND  FM1  ARE TEMPORARY STORAGE ARRAYS.
!
!     QUESTIONS AND COMMENTS SHOULD BE DIRECTED TO BURTON S. GARBOW,
!     MATHEMATICS AND COMPUTER SCIENCE DIV, ARGONNE NATIONAL LABORATORY
!
!     THIS VERSION DATED AUGUST 1983.
!
!     ------------------------------------------------------------------
!
      IF (N .LE. NM) GO TO 10
      IERR = 10 * N
      GO TO 50
!
   10 CALL  HTRIDI(NM,N,AR,AI,W,FV1,FV2,FM1)
      IF (MATZ .NE. 0) GO TO 20
!     .......... FIND EIGENVALUES ONLY ..........
      CALL  TQLRAT(N,W,FV2,IERR)
      GO TO 50
!     .......... FIND BOTH EIGENVALUES AND EIGENVECTORS ..........
   20 DO 40 I = 1, N
!
         DO 30 J = 1, N
            ZR(J,I) = 0.0d0
   30    CONTINUE
!
         ZR(I,I) = 1.0d0
   40 CONTINUE
!
      CALL  TQL2(NM,N,W,FV1,ZR,IERR)
      IF (IERR .NE. 0) GO TO 50
      CALL  HTRIBK(NM,N,AR,AI,FM1,N,ZR,ZI)
   50 RETURN
      END
!