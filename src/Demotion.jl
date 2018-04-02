
__precompile__()
export demote

import DataStructures

demote(obj::Dict) = Dict((demote(k), demote(v)) for (k, v) in obj)
demote(obj::AbstractArray) = [demote(x) for x in obj]
demote(obj::Set) = Set(demote(x) for x in obj)

demote(obj::AbstractString) = obj
demote(obj::Any) = obj