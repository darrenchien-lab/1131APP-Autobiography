import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '陳俊權的自傳',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabs = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  int previousIndex = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == 0) player.play(AssetSource("1.mp3"));
    return Scaffold(
      appBar: AppBar(
        title: const Text('陳俊權的自傳'),
        centerTitle: true,
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        iconSize: 30,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Image.asset('assets/f1.jpg', width: 40, height: 40)
                : Image.asset('assets/f1.jpg', width: 30, height: 30),
            label: '自我介紹',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '學習歷程'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: '學習計畫'),
          BottomNavigationBarItem(icon: Icon(Icons.engineering), label: '未來規劃'),
        ],
        onTap: (index) {
          setState(() {
            previousIndex = currentIndex;
            currentIndex = index;
            if (index == 0) player.play(AssetSource("1.mp3"));
            if (index == 1) player.play(AssetSource("2.mp3"));
            if (index == 2) player.play(AssetSource("3.mp3"));
            if (index == 3) player.play(AssetSource("4.mp3"));
          });
        },
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);

  final String bio = '''
我出生在一個充滿愛的家庭，日常生活中我們使用四種語言：印尼語、英語、繁體中文和福建話。父母教導我們要有健康的身體與穩固的學業基礎，這讓我成為一個充滿好奇心和自律的人。
我畢業於國立高雄科技大學 (NKUST) 的電腦科學系，並在學習過程中培養了獨立思考與團隊合作的能力。我熱愛編程與技術創新，尤其對人工智慧與機器學習感興趣。
''';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '🌟 自我介紹 🌟',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                const BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(
              bio,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/f1.jpg', width: 200, height: 200),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  final String learningProcess = '''
在大學期間，我專注於以下領域：
1. 精通 Python、Java、PHP 等程式語言。
2. 探索框架如 React 和 Django，打造動態網頁應用。
3. 參與多個團隊專案，解決實際問題並提升協作能力。
4. 持續學習 AI 與機器學習相關知識，並嘗試應用於實驗項目。
''';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        learningProcess,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  final String studyPlan = '''
我的學習計畫：
1. 持續提升英文能力，參加國際相關課程。
2. 深入學習 Flutter 以開發跨平台應用程式。
3. 參加技術比賽與專案實作，提升實戰經驗。
4. 考取相關專業證照，增強競爭力。
''';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        studyPlan,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  final String futurePlan = '''
未來規劃：
1. 在五年內成為一名全端開發工程師，熟悉各項技術堆疊。
2. 結合人工智慧與電腦視覺，開發有價值的應用程式。
3. 持續學習與分享技術知識，貢獻於開放源碼社群。
4. 成立自己的技術團隊，打造具影響力的產品與服務。
''';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        futurePlan,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
