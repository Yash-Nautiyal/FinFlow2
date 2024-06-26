import 'package:cloud_firestore/cloud_firestore.dart';

class UserModal {
  final String? id;
  final String fullname;
  final String cardnumber;
  final String cvv;
  final String expdate;

  const UserModal(
      {this.id,
      required this.fullname,
      required this.cardnumber,
      required this.cvv,
      required this.expdate});

  toJson() {
    return {
      "FullName": fullname,
      "CardNumber": cardnumber,
      "CVV": cvv,
      "ExpireDate": expdate,
    };
  }

  factory UserModal.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModal(
        fullname: data["FullName"],
        cardnumber: data["CardNumber"],
        cvv: data["CVV"],
        expdate: data["ExpireDate"]);
  }
}

class UserModal2 {
  final String? id;
  final String firstname;
  final String lastname;
  final String email;
  final String phno;

  const UserModal2({
    this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.phno,
  });

  toJson() {
    return {
      "FirstName": firstname,
      "LastName": lastname,
      "Email": email,
      "PhoneNumber": phno,
    };
  }

  factory UserModal2.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModal2(
        firstname: data["FirstName"],
        lastname: data["LastName"],
        email: data["Email"],
        phno: data["PhoneNumber"]);
  }
}

class UserModal3 {
  final String? id;
  final String grpname;
  final String moto;
  final Map member;
  final String image;
  final Map transactions;
  final Map dues;

  const UserModal3({
    this.id,
    required this.transactions,
    required this.dues,
    required this.image,
    required this.grpname,
    required this.moto,
    required this.member,
  });

  toJson() {
    return {
      "GroupName": grpname,
      "Moto": moto,
      "Memebers": member,
      "ImageUrl": image,
      "Transactions": transactions,
      "Dues": dues,
    };
  }

  factory UserModal3.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModal3(
        id: document.id,
        grpname: data["GroupName"],
        moto: data["Moto"],
        member: data["Memebers"],
        image: data['ImageUrl'],
        transactions: data["Transactions"],
        dues: data["Dues"]);
  }
}

class UserModal4 {
  final String? id;
  final Map to;
  final Map from;
  final String amount;

  const UserModal4({
    this.id,
    required this.to,
    required this.from,
    required this.amount,
  });

  toJson() {
    return {
      "To": to,
      "From": from,
      "Amount": amount,
    };
  }

  factory UserModal4.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModal4(
      to: data["To"],
      from: data["From"],
      amount: data["Amount"],
    );
  }
}
