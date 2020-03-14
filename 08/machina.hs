data Exp = Val Int | Add Exp Exp | Mul Exp Exp

-- control stack
type Cont = [Op]

data Op = EVAL_ADD Exp | EVAL_MUL Exp | ADD Int | MUL Int

eval :: Exp -> Cont -> Int
eval (Val n) c = exec c n
eval (Add x y) c = eval x (EVAL_ADD y:c)
eval (Mul x y) c = eval x (EVAL_MUL y:c)

exec :: Cont -> Int -> Int
exec [] n = n
exec (EVAL_ADD e:cs) n = eval e (ADD n:cs)
exec (EVAL_MUL e:cs) n = eval e (MUL n:cs)
exec (ADD n:cs) m = exec cs (n+m)
exec (MUL n:cs) m = exec cs (n*m)

value :: Exp -> Int
value e = eval e []

