abstract type AbstractFluxCalculationModel end

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

mutable struct MyDualFluxBalanceAnalysisCalculationModel <: AbstractFluxCalculationModel

    # data -
    A::Array{Float64,2}; # stoichiometric matrix
    bounds::Array{Float64,2}; # flux bounds
    objective::Array{Float64,1}; # objective function coefficients
    b::Array{Float64,1}; # rhs of material balances

    # methods -
    MyDualFluxBalanceAnalysisCalculationModel() = new();
end
