"""
Calculate Penalized LogP by using RDKit package
"""

using PyCall
using Printf

struct RDKit
    molecules::PyObject
end

function init()
    push!(pyimport("sys")["path"], @__DIR__)
    molecules = pyimport("molecules")
    return RDKit(molecules)
end

function main()
    println("hello")
end

"""
    penalized_logp()

`smilesstr` is Smiles string.
return penalized LogP value of `smilesstr` molecule.
"""
function penalized_logp(rdkit::RDKit, smilesstr::String)
    mol = rdkit.molecules.smiles_to_mol(smilesstr)
    return rdkit.molecules.penalized_logp(mol)
end