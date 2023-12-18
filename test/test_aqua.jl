# This file is a part of Legend.jl, licensed under the MIT License (MIT).

import Test
import Aqua
import Legend

Test.@testset "Aqua tests" begin
    Aqua.test_all(Legend)
end # testset
