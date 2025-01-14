/-
Copyright (c) 2024 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import TestingLowerBounds.FDiv

/-!
# Squared Helliger distance

## Main definitions

* `FooBar`

## Main statements

* `fooBar_unique`

## Notation



## Implementation details



## References

* [F. Bar, *Quuxes*][bibkey]

## Tags

Foobars, barfoos
-/

open Real MeasureTheory

open scoped ENNReal NNReal Topology

namespace ProbabilityTheory

variable {α : Type*} {mα : MeasurableSpace α} {μ ν : Measure α}

/-- Squared Hellinger distance between two measures. -/
noncomputable def sqHellinger (μ ν : Measure α) : ℝ :=
  (fDiv (fun x ↦ 2⁻¹ * (1 - sqrt x)^2) μ ν).toReal

end ProbabilityTheory
