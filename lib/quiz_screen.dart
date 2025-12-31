import 'package:flutter/material.dart';
import 'localization/app_localizations.dart';

class QuizScreen extends StatefulWidget {
  final String courseName;
  final String? courseInstructor;
  final String? courseImage;

  const QuizScreen({
    super.key,
    required this.courseName,
    this.courseInstructor,
    this.courseImage,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  List<int?> _userAnswers = [];
  
  // Data palsu untuk kuis
  final List<Map<String, dynamic>> _quizData = [
    {
      'question': 'Apa yang dimaksud dengan algoritma?',
      'options': ['Prosedur langkah-demi-langkah untuk menyelesaikan masalah', 'Struktur data', 'Bahasa pemrograman', 'Sistem operasi'],
      'correctAnswer': 0,
    },
    {
      'question': 'Apa kepanjangan dari OOP?',
      'options': ['Object Oriented Programming', 'Object Operated Programming', 'Operational Oriented Programming', 'Operational Operated Program'],
      'correctAnswer': 0,
    },
    {
      'question': 'Mana yang bukan merupakan tipe data primitif?',
      'options': ['int', 'String', 'bool', 'double'],
      'correctAnswer': 1,
    },
    {
      'question': 'Apa yang dimaksud dengan variabel?',
      'options': ['Tempat menyimpan data', 'Fungsi', 'Kelas', 'Metode'],
      'correctAnswer': 0,
    },
    {
      'question': 'Apa yang dimaksud dengan loop dalam pemrograman?',
      'options': ['Struktur kontrol untuk mengulangi eksekusi kode', 'Fungsi', 'Kelas', 'Variabel'],
      'correctAnswer': 0,
    },
  ];

  @override
  void initState() {
    super.initState();
    // Inisialisasi userAnswers dengan null untuk setiap pertanyaan
    _userAnswers = List.filled(_quizData.length, null);
  }

  void _selectAnswer(int answerIndex) {
    setState(() {
      _userAnswers[_currentQuestionIndex] = answerIndex;
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _quizData.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    }
  }

  void _previousQuestion() {
    if (_currentQuestionIndex > 0) {
      setState(() {
        _currentQuestionIndex--;
      });
    }
  }

  void _calculateScore() {
    int score = 0;
    for (int i = 0; i < _quizData.length; i++) {
      if (_userAnswers[i] == _quizData[i]['correctAnswer']) {
        score++;
      }
    }
    setState(() {
      _score = score;
    });
  }

  void _submitQuiz() {
    _calculateScore();
    if (mounted) {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    if (!mounted) return;
    final locale = AppLocalizations.of(context);
    
    showDialog(
      context: context,
      builder: (context) {
        if (!mounted) return Container(); // Prevent dialog from showing if widget is unmounted
        final locale = AppLocalizations.of(context);
        return AlertDialog(
          title: Text(locale.gradePostedNotification), // Gunakan terjemahan yang sesuai
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${locale.grade}: $_score/${_quizData.length}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                '${locale.overallGrade}: ${( (_score / _quizData.length) * 100 ).toStringAsFixed(1)}%',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                Navigator.of(context).pop(); // Go back to previous screen
              },
              child: Text(locale.ok),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final questionData = _quizData[_currentQuestionIndex];
    final selectedAnswer = _userAnswers[_currentQuestionIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade200, // Placeholder color
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  widget.courseImage ?? 'assets/images/default_quiz.jpg',
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                  errorBuilder: (context, error, stackTrace) {
                    // Jika gambar tidak ditemukan, tampilkan placeholder
                    return const Icon(
                      Icons.quiz,
                      color: Color(0xFFB23A3A),
                      size: 20,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '${locale.courseQuizzes} - ${widget.courseName}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Progress indicator
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: LinearProgressIndicator(
                value: (_currentQuestionIndex + 1) / _quizData.length,
                backgroundColor: Colors.grey.shade300,
                valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFB23A3A)),
              ),
            ),
            
            // Question counter
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Text(
                '${locale.question} ${_currentQuestionIndex + 1} ${locale.ofOverallGrade} ${_quizData.length}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFB23A3A),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            
            // Question card
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Question text
                    Text(
                      questionData['question'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    
                    // Options
                    Expanded(
                      child: ListView.builder(
                        itemCount: questionData['options'].length,
                        itemBuilder: (context, index) {
                          bool isSelected = selectedAnswer == index;
                          bool isCorrect = questionData['correctAnswer'] == index;
                          
                          Color optionColor = Colors.grey.shade200!;
                          if (isSelected) {
                            optionColor = const Color(0xFFB23A3A).withOpacity(0.2);
                          }
                          
                          return Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            child: Material(
                              color: optionColor,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () => _selectAnswer(index),
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: isSelected 
                                              ? const Color(0xFFB23A3A) 
                                              : Colors.grey.shade300,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Text(
                                            String.fromCharCode(65 + index), // A, B, C, D
                                            style: TextStyle(
                                              color: isSelected 
                                                  ? Colors.white 
                                                  : Colors.grey.shade700,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Text(
                                          questionData['options'][index],
                                          style: const TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      if (selectedAnswer != null && isCorrect)
                                        const Icon(
                                          Icons.check_circle,
                                          color: Colors.green,
                                          size: 24,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Navigation buttons
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Previous button
                  if (_currentQuestionIndex > 0)
                    ElevatedButton(
                      onPressed: _previousQuestion,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        foregroundColor: Colors.black87,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                      child: Text(locale.previous),
                    )
                  else
                    const SizedBox(width: 80), // Spacer to maintain alignment
                  
                  // Next/Submit button
                  ElevatedButton(
                    onPressed: selectedAnswer != null
                        ? (_currentQuestionIndex < _quizData.length - 1 
                            ? _nextQuestion 
                            : _submitQuiz)
                        : null, // Disable if no answer selected
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedAnswer != null 
                          ? const Color(0xFFB23A3A) 
                          : Colors.grey,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: Text(
                      _currentQuestionIndex < _quizData.length - 1 
                          ? locale.next 
                          : locale.submit,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}