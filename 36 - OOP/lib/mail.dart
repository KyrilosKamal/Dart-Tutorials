void main() {
  /*
  ------------------------------------------------------------
  ✅ Dart Object-Oriented Programming (OOP) Principles
  ------------------------------------------------------------

  | Principle       | Description                                                                 |
  |-----------------|-----------------------------------------------------------------------------|
  | Encapsulation   | Bundles data and methods operating on the data within classes.              |
  | Inheritance     | Allows a class to inherit properties and methods from another class.        |
  | Polymorphism    | Enables objects to be treated as instances of their parent class.           |
  | Abstraction     | Hides complex implementation details and shows only the necessary features. |

  📌 Example:

  // Base class
  class Animal {
    void makeSound() {
      print('Some generic sound');
    }
  }

  // Derived class
  class Dog extends Animal {
    @override
    void makeSound() {
      print('Bark');
    }
  }

  void main() {
    Animal myDog = Dog();
    myDog.makeSound(); // Outputs: Bark
  }

  🔍 Notes:
  - Encapsulation is achieved using access modifiers and getter/setter methods.
  - Inheritance promotes code reusability and establishes a hierarchical relationship.
  - Polymorphism allows for dynamic method binding and flexibility in code.
  - Abstraction can be implemented using abstract classes and interfaces.
*/

  Mail mail = new Mail();

  mail.sender = "Kyrillos";
  mail.recipient = "Ahmed";
  mail.subject = "Hello";
  mail.send();
  mail.receive();
  mail.forward("Ali");
  mail.reply("Re: Hello");
  mail.delete();
  mail.markAsRead();
}

class Mail {
  String? sender;
  String? recipient;
  String? subject;

  Mail({this.sender, this.recipient, this.subject});

  void send() {
    print('Sending mail from $sender to $recipient with subject: $subject');
  }

  void receive() {
    print('Receiving mail for $recipient with subject: $subject');
  }

  void forward(String newRecipient) {
    print(
      'Forwarding mail from $sender to $newRecipient with subject: $subject',
    );
  }

  void reply(String replySubject) {
    print('Replying to mail from $sender with subject: $replySubject');
  }

  void delete() {
    print('Deleting mail from $sender with subject: $subject');
  }

  void markAsRead() {
    print('Marking mail from $sender with subject: $subject as read');
  }

  void markAsUnread() {
    print('Marking mail from $sender with subject: $subject as unread');
  }
}
