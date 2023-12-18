# Use
#
#     DOCUMENTER_DEBUG=true julia --color=yes make.jl local [nonstrict] [fixdoctests]
#
# for local builds.

using Documenter
using Legend

using LegendTestData
using SolidStateDetectors

# Doctest setup
DocMeta.setdocmeta!(
    Legend,
    :DocTestSetup,
    :(using Legend);
    recursive=true,
)

makedocs(
    sitename = "Legend",
    modules = [Legend],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical = "https://legend-exp.github.io/Legend.jl/stable/"
    ),
    pages = [
        "Home" => "index.md",
        "API" => "api.md",
        "Extensions" => "extensions.md",
        "LICENSE" => "LICENSE.md",
    ],
    doctest = ("fixdoctests" in ARGS) ? :fix : true,
    linkcheck = !("nonstrict" in ARGS),
    warnonly = ("nonstrict" in ARGS),
)

deploydocs(
    repo = "github.com/legend-exp/Legend.jl.git",
    forcepush = true,
    push_preview = true,
)
