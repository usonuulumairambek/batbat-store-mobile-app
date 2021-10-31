class Account {
  final String name;
  final String surname;
  final String sity;
  final String phone;
  final String email;
  final String profileType;
  Account(
    this.name,
    this.surname,
    this.sity,
    this.phone,
    this.email,
    this.profileType,
  );
}

class AccountList {
  List<Account> account = [
    Account("Иван", "Иванов", "Москва", "Физ лицо", "", "+996555555555"),
  ];
}
