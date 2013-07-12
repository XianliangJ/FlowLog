(*
 Autogenerated by Thrift Compiler (0.8.0)

 DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING
*)

open Thrift
open Flowlog_rpc_types

class virtual iface :
object
  method virtual notifyMe : notification option -> unit
end

class client : Protocol.t -> Protocol.t -> 
object
  method notifyMe : notification -> unit
end

class processor : iface ->
object
  inherit Processor.t

  val processMap : (string, int * Protocol.t * Protocol.t -> unit) Hashtbl.t
  method process : Protocol.t -> Protocol.t -> bool
end

