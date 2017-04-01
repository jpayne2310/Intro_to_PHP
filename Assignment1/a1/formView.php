

        <?php
        for($loop = 0;$loop <100; $loop++)
        {                                               //generate an array variable
                $seed = "";                            //with 100 random hex color
                     for ( $i = 1; $i <= 6; $i++ ):     //codes
                     $seed .= substr('0123456789ABCDEF', mt_rand( 0, 15 ), 1 );
                     endfor;
                $hexgen[$loop] = $seed;
        }
    sort($hexgen);                                      //sort the array alphabetical
                                                        //order
        ?>
 