// put Your SDK setup and configuration here (CDN version)
// =======================================================

  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.6.8/firebase-app.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  const firebaseConfig = {
    apiKey: "AIzaSyDkSm046Re-AF497imBzhYnhw6c7s73qGQ",
    authDomain: "a-super-cool-project-8443c.firebaseapp.com",
    projectId: "a-super-cool-project-8443c",
    storageBucket: "a-super-cool-project-8443c.appspot.com",
    messagingSenderId: "102554999459",
    appId: "1:102554999459:web:ab5836a9e5b00574757d16"
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
const booksRef = collection(db, 'books');

async function getItems() {
    console.log('getItems');

    const items = await getDocs(booksRef);

    if (items) {
        const books = items.docs.map((item) => ({
            docId: item.id,
            ...item.data(),
        }));

        console.log(books);

        document.getElementById('firestore-holder').innerHTML =
            JSON.stringify(books);
    }
}

async function addItem() {
    console.log('addItem');

    const title = document.getElementById('title').value;
    const author = document.getElementById('author').value;
    const isbn = document.getElementById('isbn').value;

    addDoc(booksRef, {
        title,
        author,
        isbn,
    });
}

async function updateItem() {
    console.log('updateItem');

    const docId = document.getElementById('docId').value;

    const bookRef = await doc(db, `books/${docId}`);
    let bookInstance = await getDoc(bookRef);
    bookInstance = bookInstance.data();

    const title = document.getElementById('title').value;
    const author = document.getElementById('author').value;
    const isbn = document.getElementById('isbn').value;

    const bookData = {
        title: title ? title : bookInstance.title,
        author: author ? author : bookInstance.author,
        isbn: isbn ? isbn : bookInstance.isbn,
    };

    console.log(bookData);

    updateDoc(bookRef, bookData)
        .then(function () {
            console.log('success');
        })
        .catch(function (error) {
            console.log('failed', error);
        });
}

async function deleteItem() {
    console.log('deleteItem');

    const docId = document.getElementById('docId').value;
    const docRef = doc(db, `books/${docId}`);

    await deleteDoc(docRef);
}

// Let's make the buttons work!!
// Method 1: Export functions to window object
window.addItem = addItem;
window.getItems = getItems;

// Method 2: add eventLisnter to the button
document.getElementById('updateButton').addEventListener('click', updateItem);
document.getElementById('deleteButton').addEventListener('click', deleteItem);
