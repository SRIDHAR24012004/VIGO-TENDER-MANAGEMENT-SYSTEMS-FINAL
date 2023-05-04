const firebaseConfig = {
    apiKey: "AIzaSyAsGyPYRnRmnsldgHEKybUGEAiYvfpwwfY",
    authDomain: "vigo-tender-management-s-5bcee.firebaseapp.com",
    databaseURL: "https://vigo-tender-management-s-5bcee-default-rtdb.firebaseio.com",
    projectId: "vigo-tender-management-s-5bcee",
    storageBucket: "vigo-tender-management-s-5bcee.appspot.com",
    messagingSenderId: "935439265165",
    appId: "1:935439265165:web:d089d02973959bcb73e1c4"
  };

  // initialize firebase
firebase.initializeApp(firebaseConfig);

// reference your database
 var VIGOTENDERMANAGEMENTSYSTEMSDB = firebase.database().ref('VIGO TENDER MANAGEMENT SYSTEMS');

 document.getElementById("VIGO TENDER MANAGEMENT SYSTEMS").addEventListener("Submit",SubmitForm);

 function submitform(e){
    e.preventDefault();

    var UserName = getElementVal('UserName');
    var LastName = getElementVal('LastName');
    var Email = getElementVal('Email');
    var Password = getElementVal('Password');
    var ConfirmPassword = getElementVal('ConfirmPassword');

    saveMessages(UserName,LastName,Email,Password,ConfirmPassword);
 }

 const saveMessages = (UserName,LastName,Email,Password,ConfirmPassword) => {
    var newVIGOTENDERMANAGEMENTSYSTEMS = VIGOTENDERMANAGEMENTSYSTEMSDB.push();
    newVIGOTENDERMANAGEMENTSYSTEMS.set({
        UserName: UserName,
        LastName: LastName,
        Email: Email,
        Password: Password,
        ConfirmPassword: ConfirmPassword,
    });
 };

 const getElementVal = (id) => {
    return document.getElementById(id).value;
 };