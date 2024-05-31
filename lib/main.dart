import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(TarotCardApp());
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => TarotCardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/bg.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: [
                Text(
                  'Добро пожаловать в приложение',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  'Таро Карта Дня',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TarotCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Таро Карта Дня',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class TarotCardScreen extends StatefulWidget {
  @override
  _TarotCardScreenState createState() => _TarotCardScreenState();
}

class _TarotCardScreenState extends State<TarotCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Таро Карта Дня'),
        backgroundColor: Color.fromARGB(75, 249, 245, 217),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/bg.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Выбери свою карту дня:',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 180,
                      width: 95,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()),
                          );
                        },
                        child: Image.asset("assets/image/card.jpeg"),
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      height: 180,
                      width: 95,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()),
                          );
                        },
                        child: Image.asset("assets/image/card.jpeg"),
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      height: 180,
                      width: 95,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen()),
                          );
                        },
                        child: Image.asset("assets/image/card.jpeg"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TarotCard {
  final String name;
  final String description;
  final String pathImage;

  TarotCard(
      {required this.name, required this.description, required this.pathImage});
}

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final List<TarotCard> _tarotCards = [
    TarotCard(
      name: 'Шут',
      description: 'Начало нового пути, свобода и спонтанность.',
      pathImage: 'assets/image/durak.jpg',
    ),
    TarotCard(
      name: 'Маг',
      description: 'Мастерство, ресурсы и уверенность в себе.',
      pathImage: 'assets/image/mag.jpg',
    ),
    TarotCard(
      name: 'Верховная жрица',
      description: 'Интуиция, тайны и глубокие знания.',
      pathImage: 'assets/image/zhrica.jpg',
    ),
    TarotCard(
      name: 'Императрица',
      description: 'Изобилие, природа и материнство.',
      pathImage: 'assets/image/imperatrica.jpg',
    ),
    TarotCard(
      name: 'Император',
      description: 'Власть, структура и контроль.',
      pathImage: 'assets/image/imperator.jpg',
    ),
    TarotCard(
      name: 'Иерофант',
      description: 'Традиции, вероисповедание и духовное наставничество.',
      pathImage: 'assets/image/ierofant.jpg',
    ),
    TarotCard(
      name: 'Влюбленные',
      description: 'Любовь, партнерство и выбор.',
      pathImage: 'assets/image/lovers.jpg',
    ),
    TarotCard(
      name: 'Колесница',
      description: 'Решительность, успех и движение вперед.',
      pathImage: 'assets/image/colesnica.jpg',
    ),
    TarotCard(
      name: 'Сила',
      description: 'Сила духа, храбрость и внутренние ресурсы.',
      pathImage: 'assets/image/sila.jpg',
    ),
    TarotCard(
      name: 'Отшельник',
      description: 'Одиночество, поиск знаний и саморефлексия.',
      pathImage: 'assets/image/otshelnik.jpg',
    ),
    TarotCard(
      name: 'Колесо Фортуны',
      description: 'Изменения, удача и карма.',
      pathImage: 'assets/image/fortune.jpg',
    ),
    TarotCard(
      name: 'Справедливость',
      description: 'Честность, равновесие и закон.',
      pathImage: 'assets/image/spravedlivost.jpg',
    ),
    TarotCard(
      name: 'Повешенный',
      description: 'Жертва, новая перспектива и пауза.',
      pathImage: 'assets/image/poveshen.jpg',
    ),
    TarotCard(
      name: 'Смерть',
      description: 'Трансформация, конец и новое начало.',
      pathImage: 'assets/image/death.jpg',
    ),
    TarotCard(
      name: 'Умеренность',
      description: 'Баланс, терпение и умеренность.',
      pathImage: 'assets/image/umerenost.jpg',
    ),
    TarotCard(
      name: 'Дьявол',
      description: 'Материальные привязанности, искушение и ограничения.',
      pathImage: 'assets/image/devil.jpg',
    ),
    TarotCard(
      name: 'Башня',
      description: 'Резкие изменения, разрушение и освобождение.',
      pathImage: 'assets/image/tower.jpg',
    ),
    TarotCard(
      name: 'Звезда',
      description: 'Надежда, вдохновение и исцеление.',
      pathImage: 'assets/image/star.jpg',
    ),
    TarotCard(
      name: 'Луна',
      description: 'Иллюзии, страхи и интуиция.',
      pathImage: 'assets/image/moon.jpg',
    ),
    TarotCard(
      name: 'Солнце',
      description: 'Счастье, успех и радость.',
      pathImage: 'assets/image/sun.jpg',
    ),
    TarotCard(
      name: 'Суд',
      description: 'Возрождение, пробуждение и прощение.',
      pathImage: 'assets/image/sud.jpg',
    ),
    TarotCard(
      name: 'Мир',
      description: 'Завершение, гармония и достижение целей.',
      pathImage: 'assets/image/mir.jpg',
    ),
  ];

  late TarotCard _todayCard;

  @override
  void initState() {
    super.initState();
    _todayCard = _getDailyTarotCard();
  }

  TarotCard _getDailyTarotCard() {
    final random = Random();
    return _tarotCards[random.nextInt(_tarotCards.length)];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Твоя карта дня'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            SizedBox(height: 20),
            Text(
              _todayCard.name,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _todayCard.description,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 400,
              child: Center(
                child: Image.asset(_todayCard.pathImage),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text('Выбрать ещё'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
