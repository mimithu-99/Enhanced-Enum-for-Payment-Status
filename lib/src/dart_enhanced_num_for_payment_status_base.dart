// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}

/*
 2: Enhanced Enum for Payment Status
Question:

Create an enhanced enum PaymentStatus with values Pending,
 Completed, Failed, Refunded.
Implement a description property that returns a user-friendly 
string description for each status (e.g., Pending returns 
"Awaiting payment").
Add a method isFinal that returns true if the status is either 
Completed or Refunded.

*/
enum PaymentStatus {
  Pending("Awaiting payment"),
  Completed("Payment completed"),
  Failed("Payment failed"),
  Refunded("Payment refunded");

  const PaymentStatus(this.description);
  final String description;

  bool isFinal() {
    if (this == Pending || this == Failed) {
      return false;
    } else {
      return true;
    }
  }
}
