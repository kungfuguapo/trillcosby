<?php

/* Data serialization test
 *
 * Tesing this after reading about data serialization 
 * Specifically with themes and plugins saving values
 * in the WordPress Database.
 * This saves on having to set tables for each value in a setting when
 * using arrays.
 *
 * 	The output of the serialized array looks like this
 * 	a:3:{i:0;s:5:"apple";i:1;s:6:"banana";i:2;s:6:"orange";}
 */

#This sets the origina array to serialize
$data = array ('apple','banana','orange');

#this sets a variable to the ouput of the serialized array and echo's it
$serialized_data = serialize ( $data );
echo ( $serialized_data );

#this one will actuall set the variable to the output of the unserialzed array
#and then do a for loop to print the values of the array once they
#have been deserialized


$unserialized_data = unserialize ( $serialized_data );
$length = count ( $unserialized_data);
for ( $i = 0; $i < $length ; $i++ ) {

	print $unserialized_data[$i];
}

?>
