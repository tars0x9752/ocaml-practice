let sum_list3 [ x; y; z ] = x + y + z

let rec sum_list l = match l with [] -> 0 | n :: rest -> n + sum_list rest

let _ = sum_list [ 1; 4; 5; 0 ]

let rec sl = function [] -> 0 | n :: rest -> n + sl rest

let _ = sl [ 1; 4; 5; 0 ]
