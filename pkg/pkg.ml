#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "aeio" @@ fun c ->
  Ok [ Pkg.mllib "src/aeio.mllib";
       Pkg.clib "src/libaeio_stubs.clib";
       Pkg.test "test/echo"; 
       Pkg.test "test/echo_bigstring"; 
       Pkg.test "test/echo_cancel" ]
