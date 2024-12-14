import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '陳俊權的個人簡介',
      home: const Scaffold(
        appBar: AppBar(
          title: Text('🌟 陳俊權的個人簡介 🌟'),
          backgroundColor: Colors.blueAccent,
        ),
        body: PortfolioContent(),
      ),
    );
  }
}

class PortfolioContent extends StatelessWidget {
  const PortfolioContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "你好！我是陳俊權 👋",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "一位充滿熱情的軟體開發者與終身學習者，致力於透過技術創造有影響力的解決方案。歡迎來到我的旅程！",
            style: TextStyle(fontSize: 16),
          ),
          Divider(height: 32),
          SectionHeader(title: "📜 自傳"),
          Text(
            "我來自一個多語言家庭，日常使用印尼語、英文、繁體中文和福建話進行交流。我從小對科技充滿好奇，並相信技術能改變人類生活。"
            "在國立高雄科技大學 (NKUST) 就讀電腦科學學士期間，我培養了對編寫程式解決複雜問題的熱愛。",
            style: TextStyle(fontSize: 16),
          ),
          Divider(height: 32),
          SectionHeader(title: "📚 學習歷程"),
          Text(
            "我的學習過程充滿好奇心，透過實際動手操作與專案挑戰，累積了豐富的經驗。我精通 Python、Java、React 和 OpenCV，"
            "並藉由實際專案和開源貢獻不斷提升我的技術能力。我相信終身學習，並持續透過線上課程和閱讀技術部落格來增強自己。",
            style: TextStyle(fontSize: 16),
          ),
          Divider(height: 32),
          SectionHeader(title: "🎓 學習計畫"),
          Text(
            "為了跟上科技的快速變遷，我訂定了一份學習計畫，著重於以下三個領域：\n\n"
            "1. **進階網頁開發**：掌握 Next.js 框架並實現可擴展的後端解決方案。\n"
            "2. **人工智慧**：深入機器學習模型並應用於真實案例。\n"
            "3. **跨平台應用開發**：強化 Flutter 技能，打造出色的使用者體驗。",
            style: TextStyle(fontSize: 16),
          ),
          Divider(height: 32),
          SectionHeader(title: "🚀 未來規劃"),
          Text(
            "未來，我希望能在科技產業中成為一位領袖，透過創新技術解決真實問題。我的目標包括：\n\n"
            "- 創建一家專注於教育技術的公司，讓學習變得更加容易。\n"
            "- 培養年輕的開發者，回饋技術社群。\n"
            "- 探索技術與永續發展的結合，為環境保護貢獻一份力量。",
            style: TextStyle(fontSize: 16),
          ),
          Divider(height: 32),
          SectionHeader(title: "📫 聯絡我"),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("📧 電子郵件：darrentaslim04@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text("🌐 個人網站：chien.dev"),
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text("💼 LinkedIn：chiendarren"),
          ),
          Divider(height: 32),
          Text(
            "✨ 感謝您的閱讀！",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "歡迎瀏覽我的旅程，讓我們一起創造美好的未來！🚀",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
    );
  }
}
