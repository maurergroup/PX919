"""
psi4_helper.py
helper functions to use psi4 in conjunction with ASE
""" 


def geom_ase_to_psi4(atoms, charge=0, multiplicity=1, symmetry='c1' ):
    """
    takes an ase atoms object and build a Psi4 geometry string
    """
    species = atoms.get_chemical_symbols()
    pos = atoms.get_positions()
    string = "unit angstrom \n"
    string += "symmetry %s \n" %symmetry
    string += "{0} {1} \n".format(charge, multiplicity) 
    for i,(spec,p) in enumerate(zip(species, pos)):
        string += "{0} {1:14.8f} {2:14.8f} {3:14.8f}\n".format(spec, p[0], p[1], p[2])

    return string

