axiom P : Prop
axiom Q : Prop

def Z : Prop := P ∧ Q → Q ∧ P

def z : Z :=  
  fun (pq : P ∧ Q) => 
  And.intro 
    (pq.right)
    (pq.left)

axiom pq : P ∧ Q

#check z pq