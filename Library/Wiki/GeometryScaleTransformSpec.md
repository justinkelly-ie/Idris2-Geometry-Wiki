# Geometry ScaleTransform & Lattice Topology Homomorphism Verification

```idris
module Wiki.GeometryScaleTransformSpec

import Core.BoxInt
import Core.ScaleTransform
import Geometry.LatticeTopology
import Math.LinAlgebra.TernaryClassifier
import Wiki.Generators
import Data.Fin
import public QuickCheck

%default total
```

## QuickCheck Verification Properties

```idris
public export
prop_coordScaleTransformBounded : Coord3D -> Bool
prop_coordScaleTransformBounded c =
  let idx : Nat = scaleTransform c
  in idx < 27

public export
prop_coordBijectiveInversion : Coord3D -> Bool
prop_coordBijectiveInversion c =
  let idx : Nat = scaleTransform c
      c' : Coord3D = invertScaleTransform idx
  in c' == c

public export
prop_fin27BijectiveRoundtrip : Fin 27 -> Bool
prop_fin27BijectiveRoundtrip f =
  coordToFin27 (fin27ToCoord f) == f

public export
auditGeometryScaleTransformSpecProof : IO Bool
auditGeometryScaleTransformSpecProof = do
  let r1 = qc prop_coordScaleTransformBounded
  let r2 = qc prop_coordBijectiveInversion
  pure (r1.pass == Just True && r2.pass == Just True)
```
