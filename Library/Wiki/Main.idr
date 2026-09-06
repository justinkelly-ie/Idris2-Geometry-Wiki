module Wiki.Main

import System
import Wiki.GeometryScaleTransformSpec
import Geometry.LatticeTopology

%default total

main : IO ()
main = do
  putStrLn "========================================================"
  putStrLn "  IDRIS 2 GEOMETRY WIKI VERIFICATION SUITE"
  putStrLn "========================================================"
  putStrLn "1. Geometry ScaleTransform (Coord3D <-> Fin 27 Nat) QuickCheck Specs:"
  p <- auditGeometryScaleTransformSpecProof
  if p
     then putStrLn "   [PASSED] Bijective Lattice ScaleTransform Verified!"
     else do
       putStrLn "   [FAILED] QuickCheck Specs Failed!"
       exitWith (ExitFailure 1)
  putStrLn "========================================================"
  putStrLn "  GEOMETRY WIKI VERIFICATION COMPLETE: ALL PASSED!"
  putStrLn "========================================================"
