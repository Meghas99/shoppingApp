import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;

User? currentUser = auth.currentUser;

//collection

const usersCollection = "users";
const productsCollection = "products2";
const cartCollection = "cart";
const chatCollection = "chats";
const messageCollection = "messages";

const orderCollection = "orders";
