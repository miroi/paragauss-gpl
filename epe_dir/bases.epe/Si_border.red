#Basis set + effective core pseudopotential for border silicon atom (Si*)

#General parameters
 &UNIQUE_ATOM_BASISSET # unique atom  F
    LMAX_OB        =   0
    LMAX_PSEUDO    =   3 # Lmax(proj) + 1
    LMAX_CH        =   1
    LMAX_XC        =   1
    N_GLOB_CONS_CH =   0
    N_GLOB_CONS_XC =   0
    ZC             =   12.8
 /UNIQUE_ATOM_BASISSET

#Valence electrons basis set (551) -> [431]
 &UNIQUE_ATOM_BASIS # unique atom   Mg, orbital basis set : l = 0
    N_EXPONENTS         =     1
    N_UNCONTRACTED_FCTS =     1
    N_CONTRACTED_FCTS   =     0
    AUTOMATIC           = FALSE
 /UNIQUE_ATOM_BASIS
    1.000000000000000E+03

#Effective core pseudopotential
 &UNIQUE_ATOM_PSEUDOPOT # local
    N_EXPONENTS         =     1
 /UNIQUE_ATOM_PSEUDOPOT
     2
     1.000000000000
     0.0000000000000
 &UNIQUE_ATOM_PSEUDOPOT # l = 0
    N_EXPONENTS         =     1
 /UNIQUE_ATOM_PSEUDOPOT
     2
   1.75684590664068
   6.58112040809599
 &UNIQUE_ATOM_PSEUDOPOT # l = 1
     N_EXPONENTS         =     1
 /UNIQUE_ATOM_PSEUDOPOT
     2
   0.882639966965338
   2.04868506919333
 &UNIQUE_ATOM_PSEUDOPOT # l = 2
     N_EXPONENTS         =     1
 /UNIQUE_ATOM_PSEUDOPOT
     2
   0.943234111579251
  -2.03654424866003

# core density :  just a dummy (not used presently)
 &UNIQUE_ATOM_CORE_DENSITY # unique atom  K,  r**2-type core density
    N_EXPONENTS =     1
 /UNIQUE_ATOM_CORE_DENSITY
  # exponents
    1.000000000000000E+00
  # contraction
    0.000000000000000E+00

 &UNIQUE_ATOM_CORE_DENSITY # unique atom  K,  s-type core density
    N_EXPONENTS =     1
 /UNIQUE_ATOM_CORE_DENSITY
  # exponents
    1.000000000000000E+00
  # contraction
    0.000000000000000E+00

#Charge and exchange-correlation basis set
 &UNIQUE_ATOM_BASIS # unique atom  Mg , charge fit basis set : r**2
    N_EXPONENTS         =     1
    N_UNCONTRACTED_FCTS =     1
    N_CONTRACTED_FCTS   =     0 # (the default)
    AUTOMATIC           = FALSE # (the default)
 /UNIQUE_ATOM_BASIS
  # exponents
    1.000000000000000E+03

 &UNIQUE_ATOM_BASIS # unique atom  Mg , charge fit basis set : l =  0
    N_EXPONENTS         =     1
    N_UNCONTRACTED_FCTS =     1
    N_CONTRACTED_FCTS   =     0 # (the default)
    AUTOMATIC           = FALSE # (the default)
 /UNIQUE_ATOM_BASIS
  # exponents
    2.000000000000000E+03

 &UNIQUE_ATOM_BASIS # unique atom  Mg , exchange fit basis set : r**2
    N_EXPONENTS         =     2
    N_UNCONTRACTED_FCTS =     2
    N_CONTRACTED_FCTS   =     0 # (the default)
    AUTOMATIC           = FALSE # (the default)
 /UNIQUE_ATOM_BASIS
  # exponents
    2.574666666666667E-02    7.980066666666667E-02

 &UNIQUE_ATOM_BASIS # unique atom  Mg , exchange fit basis set : l =  0
    N_EXPONENTS         =     4
    N_UNCONTRACTED_FCTS =     4
    N_CONTRACTED_FCTS   =     0 # (the default)
    AUTOMATIC           = FALSE # (the default)
 /UNIQUE_ATOM_BASIS
  # exponents
    2.632333333333333E-02    7.183266666666667E-02    5.484166666666667E-01  %
    1.617146000000000E+00

 &UNIQUE_ATOM_BASIS # unique atom  Mg , exchange fit basis set : l =  1
    N_EXPONENTS         =     5
    N_UNCONTRACTED_FCTS =     5
    N_CONTRACTED_FCTS   =     0 # (the default)
    AUTOMATIC           = FALSE # (the default)
 /UNIQUE_ATOM_BASIS
  # exponents
    1.000000000000000E-01    2.500000000000000E-01    6.250000000000000E-01  %
    1.562500000000000E+00    3.906250000000000E+00

