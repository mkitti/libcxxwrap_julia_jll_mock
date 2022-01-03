baremodule libcxxwrap_julia_jll
    export libcxxwrap_julia, libcxxwrap_julia_stl
    import Base

    # If we used the remaining artifact from the actual libcxxwrap_julia_jll
    # https://github.com/JuliaBinaryWrappers/libcxxwrap_julia_jll.jl/blob/700a4ed56763315cd6e9120216af0ef2449d3c7c/Artifacts.toml#L657
    # x86_64, cxx11, 1.7.0, glibc, linux
    #const artifact_git_tree_sha1 = "6fbda767b0cb63d5cd1b258fd698b8fb14d655c0"
    # const artifact_location = "$(Base.DEPOT_PATH[1])/artifacts/$artifact_git_tree_sha1"
    
    # Location of untarred https://github.com/JuliaBinaryWrappers/libcxxwrap_julia_jll.jl/releases/download/libcxxwrap_julia-v0.8.8+1/libcxxwrap_julia.v0.8.8.x86_64-linux-gnu-cxx11-julia_version+1.7.0.tar.gz
    const artifact_location = joinpath(Base.dirname(Base.@__DIR__), "artifact")
    const libcxxwrap_julia = "$artifact_location/lib/libcxxwrap_julia.so"
    const libcxxwrap_julia_path = libcxxwrap_julia
    const libcxxwrap_julia_stl = "$artifact_location/lib/libcxxwrap_julia_stl.so"
    __init__() = "Using libcxxwrap_julia_jll at $artifact_location"
end
