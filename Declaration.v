module mod_a ( input in1, input in2, output out );
    // Module body
endmodule


By position
/*
The syntax to connect wires to ports by position, as it uses a C-like syntax. 
When instantiating a module, ports are connected left to right according to the module's declaration. For example:
*/
mod_a instance1 ( wa, wb, wc );
/*
This instantiates a module of type mod_a and gives it an instance name of "instance1", 
  then connects signal wa (outside the new module) to the first port (in1) of the new module, wb to the second port (in2), and 
    wc to the third port (out). One drawback of this syntax is that if the module's port list changes, 
      all instantiations of the module will also need to be found and changed to match the new module.
*/
  
By name
//Connecting signals to a module's ports by name allows wires to remain correctly connected even if the port list changes.

mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) );
/*
The above line instantiates a module of type mod_a named "instance2", then connects signal wa (outside the module) to the port named in1, wb to the port named in2, and wc to the port named out. 
  Notice how the ordering of ports is irrelevant here because the connection will be made to the correct name, regardless of its position in the sub-module's port list. 
    Also notice the period immediately preceding the port name in this syntax.
    */
