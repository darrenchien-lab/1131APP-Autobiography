import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darren\'s Portfolio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('🌟 Darren\'s Portfolio 🌟'),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, I’m Darren 陳俊權 👋",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "A passionate software developer and lifelong learner striving to build impactful tech solutions. Welcome to my journey!",
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 32),
              SectionHeader(title: "📜 Autobiography"),
              Text(
                "I was born and raised in a multilingual household, speaking Bahasa Indonesia, English, Traditional Chinese (繁體中文), and Hokkien. "
                    "From an early age, I was fascinated by technology and its power to transform lives. My educational journey began at NKUST (國立高雄科技大學), "
                    "where I pursued a degree in Computer Science and cultivated a deep love for solving challenging problems through code.",
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 32),
              SectionHeader(title: "📚 Learning Process"),
              Text(
                "My learning process is driven by curiosity and hands-on experience. I enjoy exploring new technologies through projects and challenges. "
                    "I have gained expertise in Python, Java, React, and OpenCV by building real-world applications and contributing to open-source projects. "
                    "I believe in continuous learning and frequently enhance my skills through online courses, coding bootcamps, and reading technical blogs.",
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 32),
              SectionHeader(title: "🎓 Study Plan"),
              Text(
                "To stay ahead in this fast-paced tech world, I have outlined a study plan focusing on three core areas: "
                    "\n\n1. **Advanced Web Development**: Mastering modern frameworks like Next.js and integrating scalable backend solutions. "
                    "\n2. **Artificial Intelligence**: Deep diving into machine learning models and experimenting with real-world applications. "
                    "\n3. **Mobile Development**: Strengthening my Flutter skills to build cross-platform apps with exceptional user experiences.",
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 32),
              SectionHeader(title: "🚀 Future Plan"),
              Text(
                "Looking ahead, I aspire to become a leader in the tech industry, creating innovative solutions that make a difference. "
                    "My future goals include:\n\n"
                    "- Building a startup that focuses on accessible education technologies.\n"
                    "- Mentoring budding developers to give back to the community.\n"
                    "- Exploring the intersection of technology and sustainability to contribute to a greener planet.",
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 32),
              SectionHeader(title: "📫 Let’s Connect!"),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("darrentaslim04@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.web),
                title: Text("Portfolio: chien.dev"),
                onTap: () {
                  // Add action to open URL
                },
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("LinkedIn: chiendarren"),
                onTap: () {
                  // Add action to open LinkedIn profile
                },
              ),
              Divider(height: 32),
              Text(
                "✨ Thank You!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Feel free to explore my journey, and let’s build something amazing together!",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
    );
  }
}
