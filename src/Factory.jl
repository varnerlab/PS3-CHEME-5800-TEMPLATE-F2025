


# --- PUBLIC METHODS BELOW HERE -------------------------------------------------------------------------------- #

"""
    build(modeltype::Type{T}, data::NamedTuple)::T where {T<:MyAbstractFluxBalanceAnalysisCalculationModel}

Builds a flux balance analysis calculation model of type `modeltype` using the provided `data`.

# Arguments
- `modeltype::Type{T}`: The type of flux balance analysis calculation model to build.
- `data::NamedTuple`: A named tuple containing the necessary data to populate the model. 

The required fields in the named tuple depend on the specific model type. 
For `MyPrimalFluxBalanceAnalysisCalculationModel`, the fields are:
- `S::Array{Float64,2}`: Stoichiometric matrix.
- `fluxbounds::Array{Float64,2}`: Flux bounds.
- `objective::Array{Float64,1}`: Objective function coefficients.
- `species::Array{String,1}`: Species names/ids.
- `reactions::Array{String,1}`: Reaction names/ids.

For `MyDualFluxBalanceAnalysisCalculationModel`, the fields are:
- `A::Array{Float64,2}`: Constraint matrix.
- `bounds::Array{Float64,2}`: Dual variable bounds.
- `objective::Array{Float64,1}`: Objective function coefficients.
- `b::Array{Float64,1}`: Right-hand side of the Dual constraints

# Returns
- An instance of the specified flux balance analysis calculation model populated with the provided data.
"""
function build(modeltype::Type{MyPrimalFluxBalanceAnalysisCalculationModel}, 
    data::NamedTuple)::MyPrimalFluxBalanceAnalysisCalculationModel

    # get data -
    S = data.S;
    fluxbounds = data.fluxbounds;
    objective = data.objective;
    species = data.species;
    reactions = data.reactions;
 
    # build an empty model -
    model = modeltype();
 
    # add data to the model -
    model.S = S;
    model.fluxbounds = fluxbounds;
    model.objective = objective;
    model.species = species;
    model.reactions = reactions;
     
     # return the model -
     return model;
 end

 """
     build(modeltype::Type{T}, data::NamedTuple)::T where {T<:MyAbstractFluxBalanceAnalysisCalculationModel}

Builds a flux balance analysis calculation model of type `modeltype` using the provided `data`.

# Arguments
- `modeltype::Type{T}`: The type of flux balance analysis calculation model to build.
- `data::NamedTuple`: A named tuple containing the necessary data to populate the model. 

The required fields in the named tuple depend on the specific model type. 
For `MyPrimalFluxBalanceAnalysisCalculationModel`, the fields are:
- `S::Array{Float64,2}`: Stoichiometric matrix.
- `fluxbounds::Array{Float64,2}`: Flux bounds.
- `objective::Array{Float64,1}`: Objective function coefficients.
- `species::Array{String,1}`: Species names/ids.
- `reactions::Array{String,1}`: Reaction names/ids.

For `MyDualFluxBalanceAnalysisCalculationModel`, the fields are:
- `A::Array{Float64,2}`: Constraint matrix.
- `bounds::Array{Float64,2}`: Dual variable bounds.
- `objective::Array{Float64,1}`: Objective function coefficients.
- `b::Array{Float64,1}`: Right-hand side of the Dual constraints

# Returns
- An instance of the specified flux balance analysis calculation model populated with the provided data.
"""
 function build(modeltype::Type{MyDualFluxBalanceAnalysisCalculationModel}, 
    data::NamedTuple)::MyDualFluxBalanceAnalysisCalculationModel

    # get data -
    A = data.A;
    bounds = data.bounds;
    objective = data.objective;
    b = data.b;

    # build an empty model -
    model = modeltype();

    # add data to the model -
    model.A = A;
    model.bounds = bounds;
    model.objective = objective;
    model.b = b;

     # return the model -
     return model;
end
# --- PUBLIC METHODS ABOVE HERE -------------------------------------------------------------------------------- #