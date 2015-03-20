<?php
/* Data serialization test */

$data = array ('apple','banana','orange');
$serialized_data = serialize ( $data );
echo ( $serialized_data );
$unserialized_data = unserialize ( $serialized_data );
echo $unserialized_data[0];
echo $unserialized_data[1];
echo $unserialized_data[2];

?>
