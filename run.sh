#!/bin/bash

decomposePar -force -allRegions

faceAgglomerate -noFunctionObjects -region Fluid

foamJob -parallel -screen faceAgglomerate -noFunctionObjects -region Fluid

viewFactorsGen -noFunctionObjects -region Fluid

foamJob -parallel -screen  viewFactorsGen -noFunctionObjects -region Fluid

foamJob -parallel -screen chtMultiRegionSimpleFoam

reconstructPar -allRegions
