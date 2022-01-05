import Base

artifact_location = Base.ENV["CONDA_PREFIX"]

deps_content = """
const artifact_location = "$artifact_location"
"""

deps_file = joinpath(Base.@__DIR__, "deps.jl")

open(deps_file, "w") do io
    write(io, deps_content)
end
