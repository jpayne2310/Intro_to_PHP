<?php
echo $valid;
?>
<form action="index.php" method="post">
    Card Type:
    <select name="ccType">
        <option value="">Choose</option>
        <option value="AM">American Express</option>
        <option value="CB">Carte Blanche</option>
        <option value="DC">Diners Club</option>
        <option value="DI">Discover</option>
        <option value="EN">EnRoute</option>
        <option value="JC">JCB</option>
        <option value="MC">MasterCard</option>
        <option value="VA">Visa</option>
    </select>
    <br />
    Card Number: <input type="text" name="ccNum" size="16" maxlength="16" /><br />
    CCV: <input type="text" name="ccCCV" size="3" maxlength="3" /><br />
    Name on Card: <input type="text" name="ccName" maxlength="30" /><br />
    Expiration:
    <select name="ccExpMo">
        <option value=""></option>
        <?php for($i=1; $i<=12; $i++) { ?>
        <option value="<?php echo $i; ?>"> <?php echo $i;?></option>
        <?php }?>
    </select>
    <select name="ccExpYr">
        <option value=""></option>
        <?php
        $year = date('Y');
        for($y = $year; $y<$year+10; $y++) { ?>
        <option value="<?php echo $y;?>"><?php echo $y;?></option>
        <?php } ?>
    </select>
    <input type="submit" name="action" value="Add Card" />
</form>