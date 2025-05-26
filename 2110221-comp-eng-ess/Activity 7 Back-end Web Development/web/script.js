// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.6.8/firebase-app.js";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyCBp906DcmpYJiEEp-8dS9dEhyQcFF3JJw",
  authDomain: "activity7-72b0e.firebaseapp.com",
  projectId: "activity7-72b0e",
  storageBucket: "activity7-72b0e.appspot.com",
  messagingSenderId: "100453663532",
  appId: "1:100453663532:web:b531e68012bf9f76672289"
};

  // Initialize Firebase
const app = initializeApp(firebaseConfig);

// =======================================================
import {
  addDoc,
  collection,
  deleteDoc,
  doc,
  getDoc,
  getDocs,
  getFirestore,
  updateDoc,
} from 'https://www.gstatic.com/firebasejs/9.6.8/firebase-firestore.js';

const db = getFirestore();
const items_ref = collection(db, 'shopping');
const items2_ref = collection(db, 'shopping2');

async function showItemsInTable() {
  const table_body = document.getElementById('main-table-body')
  table_body.innerHTML = ''
  const collection = await getDocs(items_ref);
  const items = collection.docs.map((item) => ({
    docId: item.id,
    ...item.data(),
}));
console.log(items)
  items.map((item) => {
    table_body.innerHTML += `
    <tr id="${item.docId}">
        <td>${item.item}</td>
        <td>${item.name}</td>
        <td>${item.price}</td>
        <td><button class="delete-row" onclick="deleteItem('${item.docId}')">ลบ</button></td>
    </tr>
    `
  })
}

document.addEventListener("DOMContentLoaded", function(event) {
  console.log('showing items from database')
  showItemsInTable()
  showItemsInTable2()
});

function redrawDOM() {
  window.document.dispatchEvent(new Event("DOMContentLoaded", {
      bubbles: true,
      cancelable: true
  }));
  document.getElementById("item-to-add").value = "";
  document.getElementById("name-to-add").value = "0";
  document.getElementById("price-to-add").value = "";
}

async function addItem() {
  console.log('addItem')
  const item = document.getElementById("item-to-add").value;
  const name = document.getElementById("name-to-add").value;
  const price = document.getElementById("price-to-add").value;
  if(item == ""){
    return;
  }
  if(name == ""){
    return;
  }
  if(price == ""){
    return;
  }

  addDoc(items_ref, {
    item,
    name,
    price,
  });
}

var addButton = document.querySelector("#add-newrow");
addButton.onclick = async () => {
    addItem().then(() => {
        redrawDOM()
    })
}

document.getElementById('add-newrow').addEventListener('click', addItem);

// ------------

async function showItemsInTable2() {
  const table_body2 = document.getElementById('main-table2-body')
  table_body2.innerHTML = ''
  const collection2 = await getDocs(items2_ref);
  const items2 = collection2.docs.map((item2) => ({
    docId: item2.id,
    ...item2.data(),
}));
console.log(items2)
  items2.map((item2) => {
    table_body2.innerHTML += `
    <tr id="${item2.docId}">
        <td>${item2.item2}</td>
        <td>${item2.name2}</td>
        <td>${item2.price2}</td>
    </tr>
    `
  })
}

async function addItem2() {
  console.log('addItem2')
  const item2 = document.getElementById("item2-to-add").value;
  const name2 = document.getElementById("name2-to-add").value;
  const price2 = document.getElementById("price2-to-add").value;
  if(item2 == ""){
    return;
  }
  if(name2 == ""){
    return;
  }
  if(price2 == ""){
    return;
  }

  addDoc(items2_ref, {
    item2,
    name2,
    price2,
  });
}

var addButton2 = document.querySelector("#add-newrow2");
addButton2.onclick = async () => {
    addItem2().then(() => {
        redrawDOM()
    })
}

document.getElementById('add-newrow2').addEventListener('click', addItem2);

async function deleteItem(docId) {
  const docRef = doc(db, `shopping/${docId}`);
  addItem2();
  redrawDOM();
  await deleteDoc(docRef);
  console.log("deleteItem")
  redrawDOM();
}
window.deleteItem = deleteItem;