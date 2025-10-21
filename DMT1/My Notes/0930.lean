theorem hungry (H M S : Prop) : (H ∧ M) → (H → M → S) → S := 
( -- a lambda expression/function that proves the proposition
  fun (hm : H ∧ M) => 
    fun(hms : H → M → S) =>
    (
      --to get s, apply to two arguments: H and M
      hms (hm.left) (hm.right)
    )
)

theorem xyz (C M B : Prop) : (C ∨ M) → (C → B) → (M → B) → B :=(
  fun corm cb mb => 
    match corm with --destructuring: opening up corm to see what's inside
    | Or.inl c => cb c
    | Or.inr m => mb m
    --vertical bars for each case
    -- finding ways to conclude B
)

#check Or

/- @@@ 
inductive Or (a b : Prop) : Prop where
  | inl (h : a) : Or a b
  | inr (h : b) : Or a b 
@@@ -/

theorem orComm (P Q : Prop) : (P ∨ Q) ↔ (P → Q) :=
(
  Iff.intro
-- this is like the exam: write a proposition that or is commutative

  --forward
  (
    fun porq => 
    (
      Or.inr
    ) 
  )
  --backward
  (
    fun qorp =>
    (

    )
  )
)