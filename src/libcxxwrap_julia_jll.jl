baremodule libcxxwrap_julia_jll
    export libcxxwrap_julia, libcxxwrap_julia_stl
    # https://github.com/JuliaBinaryWrappers/libcxxwrap_julia_jll.jl/blob/700a4ed56763315cd6e9120216af0ef2449d3c7c/Artifacts.toml#L657
    # x86_64, cxx11, 1.7.0, glibc, linux
    const artifact_git_tree_sha1 = "6fbda767b0cb63d5cd1b258fd698b8fb14d655c0"
    const libcxxwrap_julia = "$(DEPOT_PATH[1])/artifacts/$artifact_git_tree_sha1/lib/libcxxwrap_julia.so"
    const libcxxwrap_julia_path = libcxxwrap_julia
    const libcxxwrap_julia_stl = "$(DEPOT_PATH[1])/artifacts/$artifact_git_tree_sha1/lib/libcxxwrap_julia_stl.so"
end
