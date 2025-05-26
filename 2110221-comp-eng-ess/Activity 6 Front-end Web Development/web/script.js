  // Import the functions you need from the SDKs you need
// import { initializeApp } from "https://www.gstatic.com/firebasejs/9.6.8/firebase-app.js";
//   // TODO: Add SDKs for Firebase products that you want to use
//   // https://firebase.google.com/docs/web/setup#available-libraries

// const firebaseConfig = {
//   apiKey: "AIzaSyCBp906DcmpYJiEEp-8dS9dEhyQcFF3JJw",
//   authDomain: "activity7-72b0e.firebaseapp.com",
//   projectId: "activity7-72b0e",
//   storageBucket: "activity7-72b0e.appspot.com",
//   messagingSenderId: "100453663532",
//   appId: "1:100453663532:web:b531e68012bf9f76672289"
// };

// const app = initializeApp(firebaseConfig);
// // =======================================================
// import {
//   addDoc,
//   collection,
//   deleteDoc,
//   doc,
//   getDoc,
//   getDocs,
//   getFirestore,
//   updateDoc,
// } from 'https://www.gstatic.com/firebasejs/9.6.8/firebase-firestore.js';

// const db = getFirestore();
// const items_ref = collection(db, 'shopping');


function myFunction() { //on click event
    var order = document.getElementById("item-to-add").value; //ชื่อสิ่งของ
    var person = document.getElementById("name-to-add").value; //ชื่อคน
    var price = document.getElementById("price-to-add").value; //ชื่อสิ่งของ
    var table = document.getElementById("main-table").getElementsByTagName('tbody')[0];

    var button = document.createElement("button");
    button.innerHTML = "ลบ";
    button.id = "add-newrow";
    // button.onclick = "deleteRow(this)";
    button.addEventListener ("click", function() {
        table.removeChild(row);
       });

    var row = table.insertRow(-1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);

    cell1.innerHTML = order;
    cell2.innerHTML = person;
    cell3.innerHTML = price;
    cell4.appendChild(button);
  }

  function deleteRow(btn) {
    var row = btn.parentNode.parentNode;
    row.parentNode.removeChild(row);
  }