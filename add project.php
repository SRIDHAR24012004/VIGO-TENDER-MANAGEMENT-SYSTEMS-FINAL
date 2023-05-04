?php 
include 'set tender.php';
if(isset($_POST['submit']))


$FirstName = $_POST['FirstName'];
$LastName =  $_POST['LastName'];
$UserType =  $_POST['UserType'];
$Age      =  $_POST['Age'];
$Gender   =  $_POST['Gender'];
$Qualification = $_POST['Qualification'];
$Occupation   = $_POST['Occupation'];
$Company  = $_POST['Company'];
$HomeAddress = $_POST['HomeAddress'];
$CompanyAddress = $_POST['CompanyAddress'];
$EmailID = $_POST['EmailID'];
$ContactNo = $_POST['ContactNO'];
$UserName = $_POST['UserName'];
$Password = $_POST ['Password'];
$RetypePassword = $_POST['RetypePassword'];

if (!empty($FirstName) || !empty($LastName) || !empty($UserType)|| !empty($Age)
|| !empty($Gender) || !empty($Qualification) || !empty($Company) || !empty($HomeAddress)
|| !empty($CompanyAddress) || !empty($EmailID) || !empty($ContactNo) || !empty($UserName)  || !empty($Password)  ||  ! empty($RetypePassword) )

{
 $host = "localhost";
 $dbusername = "root";
 $dbpassword = "";
 $dbname = "vigo tender";

 include 'SIGN UP.php';
 include 'insert record.php';
 // Create Connection
 $Conn = new mysqli ($host,$dbusername,$dbpassword,$dbname);

 if (mysqli_Connect_error()){
    die('Connect Error ('. mysqli_connect_error() .')'
   . mysqli_connect_error());

 } 
 else{
    $SELECT = " SELECT email From 
      SIGNUP = where email = ? Limit 1";
    $INSERT = "INSERT Into SIGNUP ( FirstName,LastName,UserType,Age,Gender,Qualification,Occupation,Company,
    HomeAddress,CompanyAddress,EmailID,ContactNO,UserName,Password,RetypePassword)
    values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

//Prepare statement
$stmt = $Conn->prepare($SELECT);
$stmt->bind_param("s", $email);
$stmt->execute();
$stmt->bind_result($email);
$stmt->store_result();
$rnum = $stmt->num_rows;

// checking username
if ($rnum==0){
    $stmt->close();
    $stmt = $conn->prepare($INSERT);
    $stmt->bind_param("sssssssssssisss",$FirstName,$LastName,$UserType,$Age,$Gender,$Qualification,$Occupation,$Company,$HomeAddress,$CompanyAddress,$EmailID,$ContactNo);
    $stmt->execute();
    echo "New record inserted sucessfully";
} else {
  echo "someone already register using this email";
}
$stmt->close();
$conn->close();
}
}else {
    echo "All field are required";
    die();
 }
?>