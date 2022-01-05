module libcxxwrap_julia_jll
    import Base
    export libcxxwrap_julia, libcxxwrap_julia_stl

    include(Base.joinpath(Base.dirname(Base.@__DIR__), "deps", "deps.jl"))
    
    const libcxxwrap_julia = "$artifact_location/lib/libcxxwrap_julia.so"
    const libcxxwrap_julia_path = libcxxwrap_julia
    const libcxxwrap_julia_stl = "$artifact_location/lib/libcxxwrap_julia_stl.so"

    __init__() = Base.@info "libcxxwrap_julia_jll" artifact_location
end
