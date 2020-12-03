# MolProperties.jl

Calculate molecular properties from julia.

## Setup

Before using this package, install rdkit and can call from PyCall.

## Usage

```julia
using MolProperties
rdkit = MolProperties.init()
value = penalized_logp(rdkit, "c1ccccc1")
```