<table>
    <tbody>
        <?php
        $counter=0;                                                 //initiate value of loop variable
        while($counter<100){                                        //loop condition
            if($counter%10==0){                                     //condition for new row generation
                echo "<tr>";                                        //start a new row
            }
            echo "<td bgcolor='$hexgen[$counter]' ;>$hexgen[$counter]<br/>
            <span style='color:#FFFFFF;'>$hexgen[$counter]
            </span></td>";                                          //output hex color with description
            $counter++;                                             //increment loop condition variable
        }
       $counter
            ?>
    </tbody>
</table>
<?php echo $hexgen[73]; ?>