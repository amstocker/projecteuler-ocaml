let rec build_list n =
  if n < 0 then []
  else
    if n mod 3 = 0 || n mod 5 = 0 then
      n :: build_list (n - 1)
    else
      build_list (n - 1)

let () =
  let sum = List.fold_left (+) 0 (build_list 999) in
  Printf.printf "Sum: %d\n" sum
