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
