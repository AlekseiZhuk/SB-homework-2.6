class User {
  final String email;

  User(this.email);
}

mixin MailSystem on User {
  String getMailSystem() {
    return email.split("@").last;
  }
}

class AdminUser extends User with MailSystem {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User with MailSystem {
  GeneralUser(String email) : super(email);
}

class UserManager {
  List listUsers = [];

  void addUser<T extends User>(User user) {
    listUsers.add(user);
  }

  void deleteUser<T extends User>(User user) {
    listUsers.remove(user);
  }

  void printEmails() {
    for (var user in listUsers) {
      if (user is AdminUser) {
        print(user.email.split("@").last);
      } else {
        print(user.email);
      }
    }
  }
}

void main(List<String> args) {
  AdminUser adminUser = AdminUser('email@mail.ru');
  AdminUser adminUser2 = AdminUser('email2@mail.ru');
  GeneralUser generalUser = GeneralUser('general@mail.ru');
  User user = User('email@tut.by');

  print(adminUser.getMailSystem());

  UserManager userManager = UserManager();
  userManager.addUser(adminUser);
  userManager.addUser(adminUser2);
  print(userManager.listUsers);
  userManager.addUser(generalUser);
  print(userManager.listUsers);
  userManager.deleteUser(adminUser);
  print(userManager.listUsers);

  userManager.printEmails();
}
