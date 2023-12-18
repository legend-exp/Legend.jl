# This file is a part of Legend.jl, licensed under the MIT License (MIT).

import Test

Test.@testset "Package Legend" begin
    # include("test_aqua.jl")

    include("test_legend_reexports.jl")

    include("test_docs.jl")
    isempty(Test.detect_ambiguities(Legend))
end # testset
