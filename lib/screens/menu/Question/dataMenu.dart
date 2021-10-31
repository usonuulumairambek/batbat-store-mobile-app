class question {
  final String name;
  final String description;
  //final String imageUrl;

  question(
    this.name,
    this.description,
    // this.imageUrl,
  );
}

class questionList {
  List<question> list = [
    question(
      "Вопросы и ответы",
      "0",
    ),
    question(
      "Сертификаты ТР ЕАС",
      "0",
    ),
    question(
      "Размерная сетка",
      "0",
    ),
    question(
      "Оплата",
      "0",
    ),
    question(
      "Доставка",
      "0",
    ),
    question(
      "Как заказать",
      "0",
    ),
    question(
      "Контакты",
      "0",
    ),
    question(
      "О нас",
      "0",
    ),
  ];
}
