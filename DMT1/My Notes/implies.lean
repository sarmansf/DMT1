axiom P : Prop
axiom Q : Prop
-- both of these are propositions
#check P → Q 

-- Showing that if P is true then Q is true:
/- assuming that x is a natural number and that 
    x is equal to 1, then x + 1 will be 2 -/
def aProp (x : Nat) (h : x = 1) : (x + 1) = 2 :=
by
  rw [h] --rewriting goal as h

-- if p is true, that means there's a proof of p,
-- so then q is true too
--    so to prove p implies q, write a function!

--different syntax for same thing:
def aProp' (x : Nat) : (x = 1) → (x + 1 = 2) :=
  fun (h : x = 1) => by -- function takes proof of x = 1 as an argument
  rw [h]
-- aProp and aProp' are proof of an implication, which means they are **functions**

#check aProp -- upside down A: for all/for any
#check aProp' 


axiom x : Nat
axiom h : x = 1

#check  (aProp' x h)

#check True -- proposition
#check True.intro -- proof of True

-- true implies true
def timpt : True → True := 
  fun (t : True) => t 

#check False -- always false, so there's no proof of it

--def timpf : True → False :=
--fun (t: True) => -- can't finish, because there's no proofs of false! 

def fimpt : False → True :=
  fun(h : False) => True.intro --when a conclusion of a implication is true, then we know it's true
-- but we can't call this function because h won't exist, so it's a contradiction
-- we can't assume something that doesn't exist

def fimpt' : False → True :=
  fun(h : False) => False.elim h

def fimpf : False → False :=
  fun(f : False) => f

def fimpf' : False → False :=
  fun(f: False) => False.elim f