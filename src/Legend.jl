# This file is a part of Legend.jl, licensed under the MIT License (MIT).

"""
    Legend

Meta-package for the Julia software stack of the
[LEGEND experiment](https://legend-exp.org/)
"""
module Legend

import LegendDSP
import LegendDataManagement
import LegendDataTypes
import LegendEventAnalysis
import LegendHDF5IO
import LegendSpecFits
import LegendTestData
import LegendTextIO
import RadiationDetectorDSP
import RadiationDetectorSignals
import SolidStateDetectors

export LegendDSP
export LegendDataManagement
export LegendDataTypes
export LegendEventAnalysis
export LegendHDF5IO
export LegendSpecFits
export LegendTestData
export LegendTextIO
export RadiationDetectorDSP
export RadiationDetectorSignals
export SolidStateDetectors


using Reexport: @reexport

include("legend_reexports.jl")

end # module
