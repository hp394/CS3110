(** @author TODO 
    Partner 1's Name (netid),
    Partner 2's Name (netid) *)

(** [index c] is the 0-based index of [c] in the alphabet.
    Requires: [c] is an uppercase letter in A..Z. *)
let index (c:char) : int =
  failwith "Unimplemented"

(** [map_r_to_l wiring top_letter input_pos] is the left-hand output position
    at which current would appear when current enters at right-hand input
    position [input_pos] to a rotor whose wiring specification is given by
    [wiring].  The orientation of the rotor is given by [top_letter], 
    which is the top letter appearing to the operator in the rotor's 
    present orientation.
    Requires: 
    	[wiring] is a valid wiring specification, 
    	[top_letter] is in A..Z, and 
    	[input_pos] is in 0..25. *)
let map_r_to_l (wiring:string) (top_letter:char) (input_pos:int) : int =
  failwith "Unimplemented"

(** [map_l_to_r] computes the same function as [map_r_to_l], except 
    for current flowing left to right. *)
let map_l_to_r (wiring:string) (top_letter:char) (input_pos:int) : int =
  failwith "Unimplemented"

(** [map_refl wiring input_pos] is the output position at which current would 
    appear when current enters at input position [input_pos] to a reflector 
    whose wiring specification is given by [wiring].
    Requires: 
    	[wiring] is a valid reflector specification, and 
      [input_pos] is in 0..25. *)
let map_refl (wiring:string) (input_pos:int) : int =
  failwith "Unimplemented"

(** [map_plug plugs c] is the letter to which [c] is transformed
    by the plugboard [plugs].
    Requires:
      [plugs] is a valid plugboard, and
      [c] is in A..Z. *)
let rec map_plug (plugs:(char*char) list) (c:char) =
  failwith "Unimplemented"

(** [rotor] represents an Enigma rotor. *)
type rotor = {
  wiring : string;
  turnover : char;
}

(** [oriented_rotor] represents a rotor that is installed on the spindle hence 
    has a top letter. *)
type oriented_rotor = {
  rotor : rotor;
  top_letter : char;
}

(** [config] represents the configuration of an Enigma machine. 
    See the assignment handout for a description of the fields. *)
type config = {
  refl : string;
  rotors : oriented_rotor list;
  plugboard : (char*char) list;
}

(** [cipher_char config c] is the letter to which the Enigma machine 
    ciphers input [c] when it is in configuration [config].
    Requires:
      [config] is a valid configuration, and
      [c] is in A..Z. *)
let cipher_char (config:config) (c:char) : char =
  failwith "Unimplemented"

(** [step config] is the new configuration to which the Enigma machine 
    transitions when it steps beginning in configuration [config].
    Requires: [config] is a valid configuration. *)
let step (config:config) : config =
  failwith "Unimplemented"

(** [cipher config s] is the string to which [s] enciphers
    when the Enigma machine begins in configuration [config].
    Requires:
      [config] is a valid configuration, and
      [s] contains only uppercase letters. *)
let rec cipher (config:config) (s:string) : string =
  failwith "Unimplemented"

(* TODO: set the value below *)
let hours_worked = [-1; -1]
