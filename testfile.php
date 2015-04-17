<?php 

#bwrnetneFOREEALMANNYSUCK
#nrrreeeuuh

#testing new push April 1st
##Tresting post commit
#One mo gain

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

#This is the opening Echo
echo "\n<br>###Welcome to serialized arrays!###<br><br> \nBelow is an example of a PHP Array that has been serialized<br><br>"."\n\n";

#This sets the origina array to serialize
$data = array ('apple','banana','orange');

#this sets a variable to the ouput of the serialized array and echo's it
$serialized_data = serialize ( $data );
echo ( $serialized_data )."\n\n"."<br><br>";

#this one will actuall set the variable to the output of the unserialzed array
#and then do a for loop to print the values of the array once they
#have been deserialized

echo "\n###Below is an example of the same PHP Array now deserialized###<br><br>"."\n\n";

$unserialized_data = unserialize ( $serialized_data );
$length = count ( $unserialized_data);
for ( $i = 0; $i < $length ; $i++ ) {

	print $unserialized_data[$i]."\n";
        echo "<br>";	
}

?>
