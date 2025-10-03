abstract type AbstractFluxCalculationModel end

"""
    mutable struct MyPrimalFluxBalanceAnalysisCalculationModel <: AbstractFluxCalculationModel

A concrete implementation of a primal flux balance analysis calculation model.

# Fields
- `S::Array{Float64,2}`: Stoichiometric matrix.
- `fluxbounds::Array{Float64,2}`: Flux bounds.
- `objective::Array{Float64,1}`: Objective function coefficients.
- `species::Array{String,1}`: Species names/ids.
- `reactions::Array{String,1}`: Reaction names/ids.
"""
mutable struct MyPrimalFluxBalanceAnalysisCalculationModel <: AbstractFluxCalculationModel

    # data -
    S::Array{Float64,2}; # stoichiometric matrix
    fluxbounds::Array{Float64,2}; # flux bounds
    objective::Array{Float64,1}; # objective function coefficients
    species::Array{String,1}; # species names/ids
    reactions::Array{String,1}; # reaction names/ids

    # methods -
    MyPrimalFluxBalanceAnalysisCalculationModel() = new();
end

"""
    mutable struct MyDualFluxBalanceAnalysisCalculationModel <: AbstractFluxCalculationModel

A concrete implementation of a dual flux balance analysis calculation model.

# Fields
- `A::Array{Float64,2}`: Stoichiometric matrix.
- `bounds::Array{Float64,2}`: Flux bounds.
- `objective::Array{Float64,1}`: Objective function coefficients.
- `b::Array{Float64,1}`: Right-hand side of material balances.
"""
mutable struct MyDualFluxBalanceAnalysisCalculationModel <: AbstractFluxCalculationModel

    # data -
    A::Array{Float64,2}; # stoichiometric matrix
    bounds::Array{Float64,2}; # flux bounds
    objective::Array{Float64,1}; # objective function coefficients
    b::Array{Float64,1}; # rhs of material balances

    # methods -
    MyDualFluxBalanceAnalysisCalculationModel() = new();
end
