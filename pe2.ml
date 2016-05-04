let rec even_fibs_sum a b base max =
  let c = a + b in
  if c > max then base
  else
    if c mod 2 = 0 then
      even_fibs_sum b c (base + c) max
    else
      even_fibs_sum b c base max

let () =
  let sum = even_fibs_sum 0 1 0 4_000_000 in
  Printf.printf "Sum: %d\n" sum
