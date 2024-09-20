-- import Mathlib
import Mathlib.Logic.Function.Defs

variable {A B C : Type} (f : A → B) (g : B → C)

theorem injective_comp' (hf : Function.Injective f) (hg : Function.Injective g) :
  Function.Injective (g ∘ f) :=
  fun _a _b h => hf (hg h)

theorem injective_comp (hf : Function.Injective f) (hg : Function.Injective g) :
  Function.Injective (g ∘ f) := by
  intro a b h
  apply hf
  apply hg
  exact h

-- def myAdj : Fin 3 → Fin 3 → Prop
--   | 0, 1 | 1, 0 | 1, 2 | 2, 1 => True
--   | _, _ => False

-- def mySimpleGraph : SimpleGraph (Fin 3) := {
--   Adj := myAdj
--   symm := fun x y h =>
--     match x with
--     | 0 => match y with
--       | 0 => h
--       | 1 => h
--       | 2 => h
--     | 1 => match y with
--       | 0 => h
--       | 1 => h
--       | 2 => h
--     | 2 => match y with
--       | 0 => h
--       | 1 => h
--       | 2 => h
--     -- or prove it automatically by `by aesop_graph`
--   loopless := fun x h =>
--     match x with
--     | 0 => h
--     | 1 => h
--     | 2 => h
--     -- or prove it automatically by `by aesop_graph`
-- }

-- def myAdj' : Fin 3 → Fin 3 → Bool
--   | 0, 1 | 1, 0 | 1, 2 | 2, 1 => true
--   | _, _ => false

-- def mySimpleGraph' : SimpleGraph (Fin 3) := SimpleGraph.mk' ⟨myAdj',
--   by aesop_graph,
--   by aesop_graph⟩
