# This file is a part of Legend.jl, licensed under the MIT License (MIT).

using Test
using Legend
import Documenter

Documenter.DocMeta.setdocmeta!(
    Legend,
    :DocTestSetup,
    :(using Legend);
    recursive=true,
)
Documenter.doctest(Legend)
