<?php
function validate($ccNum, $ccType, $ccExpMo, $ccExpYr, $ccName, $ccCCV) {
   $err = "";
    if (empty($ccNum) || empty($ccType) || empty($ccExpMo) || empty($ccExpYr) || empty($ccName) || empty($ccCCV)) {
        return "Fill the form out completely!";
    }
    $number = cal_days_in_month(CAL_GREGORIAN, $ccExpMo, $ccExpYr);
    if(!checkdate($ccExpMo, $number, $ccExpYr)) {
        return "Invalid expiration date";
    }
    $cardDate = $ccExpYr . "-" . $ccExpMo . "-" . $number;
    if (new DateTime() > new DateTime($cardDate)) {
        return "Card has expired";
    }
    $_SESSION['number']=$number;
    $ccNum = preg_replace('/\D/', '', $ccNum);
    switch($ccType){
        case "AM":
            $valid = (!preg_match('/3[4|7][0-9]{13}$/', $ccNum));
            $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        case "CB":
           $valid = (!preg_match('/3[0|6|8][0-9]{12}$/', $ccNum));
           $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        case "DC":
            $valid = (!preg_match('/3[0|6|8][0-9]{12}$/', $ccNum));
            $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        case "DI":
            $valid = (!preg_match('/622126[0-9]{10}$|62212[7-9][0-9]{10}$|6221[3-9][0-9]{11}$|
                                  |622[2-8][0-9]{12}$|6229[0-1][0-9]{11}$|62292[0-5][0-9]{10}$|
                                  |65[0-9]{14}|6011[0-9]{12}$/', $ccNum));
            $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        case "EN":
            $valid = (!preg_match('/2014[0-9]{11}$|2149[0-9]{11}$/', $ccNum));
            $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        case "JC":
            $valid = (!preg_match('/3088[0-9]{12}$|3096[0-9]{12}$|3112[0-9]{12}$|
                                  |3158[0-9]{12}$|3337[0-9]{12}$|352[8-9][0-9]{12}$|
                                  |35[3-8][0-9]{13}$/', $ccNum));
            $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        case "MC":
            $valid = (!preg_match('/5[1-5][0-9]{14}$/', $ccNum));
            $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        case "VA":
            $valid = (!preg_match('/4[0-9]{12}$|4[0-9]{15}$/', $ccNum));
            $valid2 = (!preg_match('/[0-9]{3}$/', $ccCCV));
            break;
        default:
            return "Invalid card type";
    }
    if ($valid) { return "Invalid card number"; }
    if ($valid2) { return "Invalid card number"; }
    
}
function insertData($db, $ccNum, $ccType, $ccExpdate, $ccName, $ccCCV) {
    try{
        $sql = "INSERT INTO ccdata SET ccNum = :ccNum, ccName = :ccName, ccExpdate = :ccExpdate, ccCCV = :ccCCV, ccType = :ccType";
        $ps = $db->prepare($sql);
        $ps->bindValue(':ccNum', $ccNum);
        $ps->bindValue(':ccName', $ccName);
        $ps->bindValue(':ccExpdate', $ccExpdate);
        $ps->bindValue(':ccCCV', $ccCCV);
        $ps->bindValue(':ccType', $ccType);
        return $ps->execute();
        }
    catch(PDOException $e){
        echo $e;
        die('There was a problem with your add quary');
    }
}
?>