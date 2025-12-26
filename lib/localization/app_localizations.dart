import 'dart:async';
import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static const supportedLocales = ['en', 'id'];

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  // =====================================================
  // CORE TRANSLATOR
  // =====================================================
  String t(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }

  // =====================================================
  // COMMON GETTERS (USED IN UI)
  // =====================================================
  String get title => t('title');
  String get home => t('home');
  String get courses => t('courses');
  String get assignments => t('assignments');
  String get grades => t('grades');
  String get resources => t('resources');
  String get profile => t('profile');
  String get notifications => t('notifications');

  String get searchCourses => t('searchCourses');
  String get noCoursesFound => t('noCoursesFound');
  String get seeAll => t('seeAll');
  String get welcomeBack => t('welcomeBack');
  String get signIn => t('signIn');
  String get logout => t('logout');
  String get newNotification => t('newNotification');
  String get completedCourses => t('completedCourses');
  String get documents => t('documents');
  String get videos => t('videos');
  String get links => t('links');
  String get books => t('books');
  String get recentResources => t('recentResources');
  String get resource => t('resource');
  String get resourceDescription => t('resourceDescription');
  String get courseSyllabusPdf => t('courseSyllabusPdf');
  String get lectureVideoIntroduction => t('lectureVideoIntroduction');
  String get externalResourceLink => t('externalResourceLink');
  String get email => t('email');
  String get password => t('password');
  String get forgotPassword => t('forgotPassword');
  String get createNewAccount => t('createNewAccount');
  String get name => t('name');
  String get confirmPassword => t('confirmPassword');
  String get register => t('register');
  String get signInToContinue => t('signInToContinue');
  String get all => t('all');
  String get pending => t('pending');
  String get completed => t('completed');
  String get dueInThreeDays => t('dueInThreeDays');
  String get dueDate => t('dueDate');
  String get status => t('status');
  String get grade => t('grade');
  String get subject => t('subject');
  String get overallGrade => t('overallGrade');
  String get language => t('language');
  String get learning => t('learning');
  String get learningManagementSystem => t('learningManagementSystem');
  String get createAccount => t('createAccount');
  String get fullName => t('fullName');
  String get alreadyHaveAccount => t('alreadyHaveAccount');
  String get settings => t('settings');
  String get download => t('download');
  String get view => t('view');
  String get submit => t('submit');
  String get submitAssignment => t('submitAssignment');
  String get cancel => t('cancel');
  String get ok => t('ok');
  String get or => t('or');
  String get pleaseEnterYourName => t('pleaseEnterYourName');
  String get pleaseEnterYourEmail => t('pleaseEnterYourEmail');
  String get passwordMustBeAtLeast6Characters => t('passwordMustBeAtLeast6Characters');
  String get passwordsDoNotMatch => t('passwordsDoNotMatch');
  String get description => t('description');
  String get defaultDueDate => t('defaultDueDate');
  String get fileSubmission => t('fileSubmission');
  String get chooseFile => t('chooseFile');
  String get progress => t('progress');
  String get computerScience101 => t('computerScience101');
  String get courseInstructorPlaceholder => t('courseInstructorPlaceholder');
  String get courseDescriptionPlaceholder => t('courseDescriptionPlaceholder');
  String get courseLevelIntermediate => t('courseLevelIntermediate');
  String get lesson3AdvancedConcepts => t('lesson3AdvancedConcepts');
  String get lesson4PracticalExercise => t('lesson4PracticalExercise');
  String get lesson5FinalProject => t('lesson5FinalProject');
  String get welcome => t('welcome');
  String get quickStats => t('quickStats');
  String get enrolledCourses => t('enrolledCourses');
  String get inProgressCourses => t('inProgressCourses');
  String get upcomingAssignments => t('upcomingAssignments');
  String get recentGrades => t('recentGrades');
  String get courseContent => t('courseContent');
  String get lessons => t('lessons');
  String get assignmentsList => t('assignmentsList');
  String get resourcesList => t('resourcesList');
  String get performance => t('performance');
  String get breakdown => t('breakdown');
  String get insights => t('insights');
  String get academicStats => t('academicStats');
  String get myProfile => t('myProfile');
  String get personalInfo => t('personalInfo');
  String get academicInfo => t('academicInfo');
  String get academicYear => t('academicYear');
  String get changeLanguage => t('changeLanguage');
  String get emailPlaceholder => t('emailPlaceholder');
  String get gpa => t('gpa');
  String get studentIdPlaceholder => t('studentIdPlaceholder');
  String get computerScience => t('computerScience');
  String get year3 => t('year3');
  String get unread => t('unread');
  String get read => t('read');
  String get category => t('category');
  String get action => t('action');
  String get success => t('success');
  String get error => t('error');
  String get warning => t('warning');
  String get info => t('info');
  String get today => t('today');
  String get tomorrow => t('tomorrow');
  String get thisWeek => t('thisWeek');
  String get thisMonth => t('thisMonth');
  String get completedAssignments => t('completedAssignments');
  String get pendingAssignments => t('pendingAssignments');
  String get lateSubmissions => t('lateSubmissions');
  String get averageGrade => t('averageGrade');
  String get highestGrade => t('highestGrade');
  String get lowestGrade => t('lowestGrade');
  String get courseProgress => t('courseProgress');
  String get currentLesson => t('currentLesson');
  String get nextLesson => t('nextLesson');
  String get courseDetails => t('courseDetails');
  String get courseInstructor => t('courseInstructor');
  String get courseSchedule => t('courseSchedule');
  String get courseRating => t('courseRating');
  String get courseReviews => t('courseReviews');
  String get courseEnrollment => t('courseEnrollment');
  String get courseDuration => t('courseDuration');
  String get courseLevel => t('courseLevel');
  String get courseCategory => t('courseCategory');
  String get coursePrerequisites => t('coursePrerequisites');
  String get courseObjectives => t('courseObjectives');
  String get courseRequirements => t('courseRequirements');
  String get courseCertificate => t('courseCertificate');
  String get courseFee => t('courseFee');
  String get courseStartDate => t('courseStartDate');
  String get courseEndDate => t('courseEndDate');
  String get courseLocation => t('courseLocation');
  String get courseMode => t('courseMode');
  String get courseFormat => t('courseFormat');
  String get courseCredits => t('courseCredits');
  String get courseHours => t('courseHours');
  String get courseSyllabus => t('courseSyllabus');
  String get courseAnnouncements => t('courseAnnouncements');
  String get courseDiscussions => t('courseDiscussions');
  String get courseGrades => t('courseGrades');
  String get aPlus => t('aPlus');
  String get a => t('a');
  String get bPlus => t('bPlus');
  String get aMinus => t('aMinus');
  String get b => t('b');
  String get bMinus => t('bMinus');
  String get c => t('c');
  String get cMinus => t('cMinus');
  String get cPlus => t('cPlus');
  String get d => t('d');
  String get f => t('f');
  String get assignment => t('assignment');
  String get courseAssignments => t('courseAssignments');
  String get courseQuizzes => t('courseQuizzes');
  String get courseExams => t('courseExams');
  String get courseProjects => t('courseProjects');
  String get courseActivities => t('courseActivities');
  String get courseAssessments => t('courseAssessments');
  String get courseTests => t('courseTests');
  String get courseHomework => t('courseHomework');
  String get courseLabs => t('courseLabs');
  String get coursePracticals => t('coursePracticals');
  String get courseTutorials => t('courseTutorials');
  String get courseLectures => t('courseLectures');
  String get courseVideos => t('courseVideos');
  String get courseAudio => t('courseAudio');
  String get courseDocuments => t('courseDocuments');
  String get courseImages => t('courseImages');
  String get coursePDFs => t('coursePDFs');
  String get coursePresentations => t('coursePresentations');
  String get courseSpreadsheets => t('courseSpreadsheets');
  String get courseArchives => t('courseArchives');
  String get courseOther => t('courseOther');
  String get event => t('event');
  String get ofOverallGrade => t('ofOverallGrade');
  String get markAsRead => t('markAsRead');
  String get takeAction => t('takeAction');
  String get relatedNotifications => t('relatedNotifications');
  String get course => t('course');
  String get instructorName => t('instructorName');
  String get courseDescriptionText => t('courseDescriptionText');
  String get recommendedForYou => t('recommendedForYou');
  String get assignmentDescription => t('assignmentDescription');
  String get youHaveNewNotification => t('youHaveNewNotification');
  String get notificationMessagePlaceholder => t('notificationMessagePlaceholder');
  String get assignmentReminder => t('assignmentReminder');
  String get assignmentDueTomorrow => t('assignmentDueTomorrow');
  String get courseUpdate => t('courseUpdate');
  String get newMaterialsAdded => t('newMaterialsAdded');
  String get gradePosted => t('gradePosted');
  String get midtermGradeAvailable => t('midtermGradeAvailable');
  String get flutterDevelopment => t('flutterDevelopment');
  String get webDevelopment => t('webDevelopment');
  String get uiUxDesign => t('uiUxDesign');
  String get dataScience => t('dataScience');
  String get machineLearning => t('machineLearning');
  String get advancedFlutter => t('advancedFlutter');
  String get webSecurity => t('webSecurity');
  String get cloudComputing => t('cloudComputing');
  String get oneMinAgo => t('oneMinAgo');
  String get twoMinAgo => t('twoMinAgo');
  String get fiveMinAgo => t('fiveMinAgo');
  String get tenMinAgo => t('tenMinAgo');
  String get fifteenMinAgo => t('fifteenMinAgo');
  String get twentyMinAgo => t('twentyMinAgo');
  String get thirtyMinAgo => t('thirtyMinAgo');
  String get oneHourAgo => t('oneHourAgo');
  String get twoHoursAgo => t('twoHoursAgo');
  String get threeHoursAgo => t('threeHoursAgo');
  String get oneDayAgo => t('oneDayAgo');
  String get twoDaysAgo => t('twoDaysAgo');
  String get yesterday => t('yesterday');
  String get justNow => t('justNow');
  String get checkOutNewWebDevelopmentCourse => t('checkOutNewWebDevelopmentCourse');
  String get yourGradeForAssignment => t('yourGradeForAssignment');
  String get pdfDocument => t('pdfDocument');
  String get fileSize24MB => t('fileSize24MB');
  String get uploadDatePlaceholder => t('uploadDatePlaceholder');
  String get resourceDescriptionPlaceholder => t('resourceDescriptionPlaceholder');
  String get lectureNotesChapter1 => t('lectureNotesChapter1');
  String get assignmentGuidelines => t('assignmentGuidelines');
  String get videoTutorialIntroduction => t('videoTutorialIntroduction');
  String get practiceQuestions => t('practiceQuestions');
  String get pdf => t('pdf');
  String get docx => t('docx');
  String get mp4 => t('mp4');
  String get fileSize12MB => t('fileSize12MB');
  String get fileSize08MB => t('fileSize08MB');
  String get fileSize452MB => t('fileSize452MB');
  String get fileSize05MB => t('fileSize05MB');
  String get share => t('share');
  String get reportIssue => t('reportIssue');
  String get additionalResources => t('additionalResources');
  String get lessonNotesPdf => t('lessonNotesPdf');
  String get previous => t('previous');
  String get markComplete => t('markComplete');
  String get next => t('next');
  String get newCourseAvailable => t('newCourseAvailable');
  String get assignmentDueSoon => t('assignmentDueSoon');
  String get upcomingEvent => t('upcomingEvent');
  String get courseUpdateNotification => t('courseUpdateNotification');
  String get gradePostedNotification => t('gradePostedNotification');
  String get newCourseAvailableDescription => t('newCourseAvailableDescription');
  String get assignmentDueSoonDescription => t('assignmentDueSoonDescription');
  String get upcomingEventDescription => t('upcomingEventDescription');
  String get courseUpdateDescription => t('courseUpdateDescription');
  String get gradePostedDescription => t('gradePostedDescription');
  String get myCourses => t('myCourses');
  String get continueLearning => t('continueLearning');
  String get popularCourses => t('popularCourses');
  String get assignmentDescriptionPlaceholder => t('assignmentDescriptionPlaceholder');
  String get inProgress => t('inProgress');
  String get passed => t('passed');
  String get failed => t('failed');
  String get courseResources => t('courseResources');
  String get textbookChapter1 => t('textbookChapter1');
  String get assignmentGuidelinesPdf => t('assignmentGuidelinesPdf');
  String get downloadableMaterials => t('downloadableMaterials');
  String get courseMaterials => t('courseMaterials');
  String get videoLecture => t('videoLecture');
  String get externalLink => t('externalLink');
  String get readingMaterial => t('readingMaterial');
  String get assignmentGuide => t('assignmentGuide');
  String get downloads => t('downloads');

  // 👉 Tambah getter lain SESUAI kebutuhan UI
  // =====================================================

  // =====================================================
  // LOCALIZED VALUES
  // =====================================================
  static const Map<String, Map<String, String>> _localizedValues = {
    'id': {
      'title': 'Learnix',
      'home': 'Beranda',
      'courses': 'Kursus',
      'assignments': 'Tugas',
      'grades': 'Nilai',
      'resources': 'Sumber',
      'profile': 'Profil',
      'notifications': 'Notifikasi',
      'searchCourses': 'Cari kursus...',
      'noCoursesFound': 'Tidak ada kursus yang ditemukan',
      'seeAll': 'Lihat Semua',
      'welcomeBack': 'Selamat Datang Kembali',
      'signIn': 'Masuk',
      'logout': 'Keluar',
      'dueInThreeDays': 'Jatuh tempo dalam 3 hari',
      'dueDate': 'Tanggal Jatuh Tempo',
      'status': 'Status',
      'grade': 'Nilai',
      'subject': 'Mata Pelajaran',
      'overallGrade': 'Nilai Keseluruhan',
      'learning': 'Pembelajaran',
      'learningManagementSystem': 'Sistem Manajemen Pembelajaran',
      'createAccount': 'Buat Akun',
      'fullName': 'Nama Lengkap',
      'alreadyHaveAccount': 'Sudah Punya Akun?',
      'settings': 'Pengaturan',
      'download': 'Unduh',
      'view': 'Lihat',
      'submit': 'Kirim',
      'submitAssignment': 'Kirim Tugas',
      'cancel': 'Batal',
      'ok': 'OK',
      'or': 'ATAU',
      'pleaseEnterYourName': 'Silakan masukkan nama Anda',
      'pleaseEnterYourEmail': 'Silakan masukkan email Anda',
      'passwordMustBeAtLeast6Characters': 'Kata sandi harus memiliki setidaknya 6 karakter',
      'passwordsDoNotMatch': 'Kata sandi tidak cocok',
      'description': 'Deskripsi',
      'defaultDueDate': '2023-12-31',
      'fileSubmission': 'Pengiriman File',
      'chooseFile': 'Pilih File',
      'progress': 'Kemajuan',
      'computerScience101': 'Ilmu Komputer 101',
      'courseInstructorPlaceholder': 'Dr. John Smith',
      'courseDescriptionPlaceholder': 'Kursus ini mencakup konsep-konsep fundamental dalam ilmu komputer dan pemrograman.',
      'courseLevelIntermediate': 'Menengah',
      'lesson3AdvancedConcepts': 'Pelajaran 3: Konsep Lanjutan',
      'lesson4PracticalExercise': 'Pelajaran 4: Latihan Praktis',
      'lesson5FinalProject': 'Pelajaran 5: Proyek Akhir',
      'welcome': 'Selamat Datang',
      'quickStats': 'Statistik Cepat',
      'enrolledCourses': 'Kursus Terdaftar',
      'inProgressCourses': 'Kursus Dalam Proses',
      'upcomingAssignments': 'Tugas Mendatang',
      'recentGrades': 'Nilai Terbaru',
      'courseContent': 'Isi Kursus',
      'lessons': 'Pelajaran',
      'assignmentsList': 'Daftar Tugas',
      'resourcesList': 'Daftar Sumber',
      'performance': 'Kinerja',
      'breakdown': 'Rincian',
      'insights': 'Wawasan',
      'academicStats': 'Statistik Akademik',
      'myProfile': 'Profil Saya',
      'personalInfo': 'Informasi Pribadi',
      'academicInfo': 'Informasi Akademik',
      'academicYear': 'Tahun Akademik',
      'changeLanguage': 'Ubah Bahasa',
      'emailPlaceholder': 'john.doe@example.com',
      'gpa': 'IPK',
      'studentIdPlaceholder': 'S12345678',
      'computerScience': 'Ilmu Komputer',
      'year3': 'Tahun 3',
      'unread': 'Belum Dibaca',
      'read': 'Sudah Dibaca',
      'category': 'Kategori',
      'action': 'Tindakan',
      'success': 'Berhasil',
      'error': 'Kesalahan',
      'warning': 'Peringatan',
      'info': 'Informasi',
      'today': 'Hari Ini',
      'tomorrow': 'Besok',
      'thisWeek': 'Minggu Ini',
      'thisMonth': 'Bulan Ini',
      'completedAssignments': 'Tugas Selesai',
      'pendingAssignments': 'Tugas Tertunda',
      'lateSubmissions': 'Pengiriman Terlambat',
      'averageGrade': 'Rata-rata Nilai',
      'highestGrade': 'Nilai Tertinggi',
      'lowestGrade': 'Nilai Terendah',
      'courseProgress': 'Kemajuan Kursus',
      'currentLesson': 'Pelajaran Saat Ini',
      'nextLesson': 'Pelajaran Berikutnya',
      'courseDetails': 'Detail Kursus',
      'courseInstructor': 'Instruktur Kursus',
      'courseSchedule': 'Jadwal Kursus',
      'courseRating': 'Penilaian Kursus',
      'courseReviews': 'Ulasan Kursus',
      'courseEnrollment': 'Pendaftaran Kursus',
      'courseDuration': 'Durasi Kursus',
      'courseLevel': 'Tingkat Kursus',
      'courseCategory': 'Kategori Kursus',
      'coursePrerequisites': 'Prasyarat Kursus',
      'courseObjectives': 'Tujuan Kursus',
      'courseRequirements': 'Persyaratan Kursus',
      'courseCertificate': 'Sertifikat Kursus',
      'courseFee': 'Biaya Kursus',
      'courseStartDate': 'Tanggal Mulai Kursus',
      'courseEndDate': 'Tanggal Akhir Kursus',
      'courseLocation': 'Lokasi Kursus',
      'courseMode': 'Mode Kursus',
      'courseFormat': 'Format Kursus',
      'courseCredits': 'Kredit Kursus',
      'courseHours': 'Jam Kursus',
      'courseSyllabus': 'Silabus Kursus',
      'courseAnnouncements': 'Pengumuman Kursus',
      'courseDiscussions': 'Diskusi Kursus',
      'courseGrades': 'Nilai Kursus',
      'aPlus': 'A+',
      'a': 'A',
      'bPlus': 'B+',
      'aMinus': 'A-',
      'b': 'B',
      'bMinus': 'B-',
      'c': 'C',
      'cMinus': 'C-',
      'cPlus': 'C+',
      'd': 'D',
      'f': 'F',
      'assignment': 'Tugas',
      'courseAssignments': 'Tugas Kursus',
      'courseQuizzes': 'Kuis Kursus',
      'courseExams': 'Ujian Kursus',
      'courseProjects': 'Proyek Kursus',
      'courseActivities': 'Aktivitas Kursus',
      'courseAssessments': 'Penilaian Kursus',
      'courseTests': 'Tes Kursus',
      'courseHomework': 'Pekerjaan Rumah',
      'courseLabs': 'Laboratorium Kursus',
      'coursePracticals': 'Praktikum Kursus',
      'courseTutorials': 'Tutorial Kursus',
      'courseLectures': 'Kuliah Kursus',
      'courseVideos': 'Video Kursus',
      'courseAudio': 'Audio Kursus',
      'courseDocuments': 'Dokumen Kursus',
      'courseImages': 'Gambar Kursus',
      'coursePDFs': 'PDF Kursus',
      'coursePresentations': 'Presentasi Kursus',
      'courseSpreadsheets': 'Lembar Kerja Kursus',
      'courseArchives': 'Arsip Kursus',
      'courseOther': 'Lainnya',
      'event': 'Acara',
      'ofOverallGrade': 'dari Nilai Keseluruhan',
      'markAsRead': 'Tandai Sudah Dibaca',
      'takeAction': 'Ambil Tindakan',
      'relatedNotifications': 'Notifikasi Terkait',
      'course': 'Kursus',
      'instructorName': 'Nama Instruktur',
      'courseDescriptionText': 'Deskripsi Kursus',
      'recommendedForYou': 'Rekomendasi untuk Anda',
      'assignmentDescription': 'Deskripsi Tugas',
      'youHaveNewNotification': 'Anda memiliki notifikasi baru',
      'notificationMessagePlaceholder': 'Anda memiliki pengumuman baru dari kursus Ilmu Komputer Anda. Silakan periksa detailnya untuk tetap terupdate dengan informasi terbaru.',
      'assignmentReminder': 'Pengingat Tugas',
      'assignmentDueTomorrow': 'Tugas Anda jatuh tempo besok',
      'courseUpdate': 'Pembaruan Kursus',
      'newMaterialsAdded': 'Materi baru ditambahkan ke CS101',
      'gradePosted': 'Nilai Diposting',
      'midtermGradeAvailable': 'Nilai ujian tengah semester Anda tersedia',
      'flutterDevelopment': 'Pengembangan Flutter',
      'webDevelopment': 'Pengembangan Web',
      'uiUxDesign': 'Desain UI/UX',
      'dataScience': 'Ilmu Data',
      'machineLearning': 'Pembelajaran Mesin',
      'advancedFlutter': 'Flutter Lanjutan',
      'webSecurity': 'Keamanan Web',
      'cloudComputing': 'Komputasi Awan',
      'oneMinAgo': '1 menit yang lalu',
      'twoMinAgo': '2 menit yang lalu',
      'fiveMinAgo': '5 menit yang lalu',
      'tenMinAgo': '10 menit yang lalu',
      'fifteenMinAgo': '15 menit yang lalu',
      'twentyMinAgo': '20 menit yang lalu',
      'thirtyMinAgo': '30 menit yang lalu',
      'oneHourAgo': '1 jam yang lalu',
      'twoHoursAgo': '2 jam yang lalu',
      'threeHoursAgo': '3 jam yang lalu',
      'oneDayAgo': '1 hari yang lalu',
      'twoDaysAgo': '2 hari yang lalu',
      'yesterday': 'Kemarin',
      'justNow': 'Baru saja',
      'checkOutNewWebDevelopmentCourse': 'Lihat kursus Pengembangan Web baru kami',
      'yourGradeForAssignment': 'Nilai Anda untuk tugas',
      'pdfDocument': 'Dokumen PDF',
      'fileSize24MB': '2.4 MB',
      'uploadDatePlaceholder': '2023-10-15',
      'resourceDescriptionPlaceholder': 'Sumber daya ini berisi informasi penting tentang materi kursus. Ini termasuk contoh, latihan, dan materi bacaan tambahan untuk membantu Anda lebih memahami konsep yang dibahas di kelas.',
      'lectureNotesChapter1': 'Catatan Kuliah - Bab 1',
      'assignmentGuidelines': 'Pedoman Tugas',
      'videoTutorialIntroduction': 'Tutorial Video - Pengantar',
      'practiceQuestions': 'Pertanyaan Latihan',
      'pdf': 'PDF',
      'docx': 'DOCX',
      'mp4': 'MP4',
      'fileSize12MB': '1.2 MB',
      'fileSize08MB': '0.8 MB',
      'fileSize452MB': '45.2 MB',
      'fileSize05MB': '0.5 MB',
      'share': 'Bagikan',
      'reportIssue': 'Laporkan Masalah',
      'additionalResources': 'Sumber Tambahan',
      'lessonNotesPdf': 'Catatan Pelajaran.pdf',
      'previous': 'Sebelumnya',
      'markComplete': 'Tandai Selesai',
      'next': 'Berikutnya',
      'newCourseAvailable': 'Kursus Baru Tersedia',
      'assignmentDueSoon': 'Tugas Jatuh Tempo Segera',
      'upcomingEvent': 'Acara Mendatang',
      'courseUpdateNotification': 'Pembaruan Kursus',
      'gradePostedNotification': 'Nilai Diposting',
      'newCourseAvailableDescription': 'Sebuah kursus baru telah ditambahkan ke jalur pembelajaran Anda. Lihat kursus Pengembangan Flutter terbaru dengan materi komprehensif dan latihan praktis.',
      'assignmentDueSoonDescription': 'Tugas Anda untuk Ilmu Komputer 101 jatuh tempo besok. Harap kirimkan pekerjaan Anda sebelum batas waktu untuk menghindari sanksi.',
      'upcomingEventDescription': 'Ikuti webinar kami tentang Pengembangan Mobile hari Jumat ini pukul 14.00. Pelajari tren terbaru dan praktik terbaik dari para ahli industri.',
      'courseUpdateDescription': 'Materi baru telah ditambahkan ke kursus Pengembangan Flutter Anda. Periksa konten terbaru dan latihan praktisnya.',
      'gradePostedDescription': 'Nilai Anda untuk ujian tengah semester di Ilmu Komputer telah diposting. Anda sekarang dapat melihat skor dan umpan balik dari instruktur.',
      'myCourses': 'Kursus Saya',
      'continueLearning': 'Lanjutkan Belajar',
      'popularCourses': 'Kursus Populer',
      'assignmentDescriptionPlaceholder': 'Tugas ini mengharuskan Anda untuk mengimplementasikan aplikasi kalkulator dasar dengan operasi penjumlahan, pengurangan, perkalian, dan pembagian. Aplikasi harus memiliki antarmuka yang ramah pengguna dan menangani kasus kesalahan dengan baik.',
      'inProgress': 'Dalam Proses',
      'passed': 'Lulus',
      'failed': 'Gagal',
      'courseResources': 'Sumber Kursus',
      'textbookChapter1': 'Bab Buku Teks 1',
      'assignmentGuidelinesPdf': 'Pedoman Tugas PDF',
      'downloadableMaterials': 'Materi yang Dapat Diunduh',
      'courseMaterials': 'Materi Kursus',
      'videoLecture': 'Video Kuliah',
      'externalLink': 'Tautan Eksternal',
      'readingMaterial': 'Materi Bacaan',
      'assignmentGuide': 'Panduan Tugas',
      'downloads': 'Unduhan',
      'newNotification': 'Notifikasi Baru',
      'completedCourses': 'Kursus Selesai',
      'documents': 'Dokumen',
      'videos': 'Video',
      'links': 'Tautan',
      'books': 'Buku',
      'recentResources': 'Sumber Terbaru',
      'resource': 'Sumber',
      'resourceDescription': 'Deskripsi Sumber',
      'courseSyllabusPdf': 'Silabus Kursus PDF',
      'lectureVideoIntroduction': 'Video Pengantar Kuliah',
      'externalResourceLink': 'Tautan Sumber Eksternal',
      'pending': 'Tertunda'
    },
    'en': {
      'title': 'Learnix',
      'home': 'Home',
      'courses': 'Courses',
      'assignments': 'Assignments',
      'grades': 'Grades',
      'resources': 'Resources',
      'profile': 'Profile',
      'notifications': 'Notifications',
      'searchCourses': 'Search courses...',
      'noCoursesFound': 'No courses found',
      'seeAll': 'See All',
      'welcomeBack': 'Welcome Back',
      'signIn': 'Sign In',
      'logout': 'Logout',
      'dueInThreeDays': 'Due in 3 days',
      'dueDate': 'Due Date',
      'status': 'Status',
      'grade': 'Grade',
      'subject': 'Subject',
      'overallGrade': 'Overall Grade',
      'learning': 'Learning',
      'learningManagementSystem': 'Learning Management System',
      'createAccount': 'Create Account',
      'fullName': 'Full Name',
      'alreadyHaveAccount': 'Already Have Account?',
      'settings': 'Settings',
      'download': 'Download',
      'view': 'View',
      'submit': 'Submit',
      'submitAssignment': 'Submit Assignment',
      'cancel': 'Cancel',
      'ok': 'OK',
      'or': 'OR',
      'pleaseEnterYourName': 'Please enter your name',
      'pleaseEnterYourEmail': 'Please enter your email',
      'passwordMustBeAtLeast6Characters': 'Password must be at least 6 characters',
      'passwordsDoNotMatch': 'Passwords do not match',
      'description': 'Description',
      'defaultDueDate': '2023-12-31',
      'fileSubmission': 'File Submission',
      'chooseFile': 'Choose File',
      'progress': 'Progress',
      'computerScience101': 'Computer Science 101',
      'courseInstructorPlaceholder': 'Dr. John Smith',
      'courseDescriptionPlaceholder': 'This course covers fundamental concepts in computer science and programming.',
      'courseLevelIntermediate': 'Intermediate',
      'lesson3AdvancedConcepts': 'Lesson 3: Advanced Concepts',
      'lesson4PracticalExercise': 'Lesson 4: Practical Exercise',
      'lesson5FinalProject': 'Lesson 5: Final Project',
      'welcome': 'Welcome',
      'quickStats': 'Quick Stats',
      'enrolledCourses': 'Enrolled Courses',
      'inProgressCourses': 'In Progress Courses',
      'upcomingAssignments': 'Upcoming Assignments',
      'recentGrades': 'Recent Grades',
      'courseContent': 'Course Content',
      'lessons': 'Lessons',
      'assignmentsList': 'Assignments List',
      'resourcesList': 'Resources List',
      'performance': 'Performance',
      'breakdown': 'Breakdown',
      'insights': 'Insights',
      'academicStats': 'Academic Stats',
      'myProfile': 'My Profile',
      'personalInfo': 'Personal Info',
      'academicInfo': 'Academic Info',
      'academicYear': 'Academic Year',
      'changeLanguage': 'Change Language',
      'emailPlaceholder': 'john.doe@example.com',
      'gpa': 'GPA',
      'studentIdPlaceholder': 'S12345678',
      'computerScience': 'Computer Science',
      'year3': 'Year 3',
      'unread': 'Unread',
      'read': 'Read',
      'category': 'Category',
      'action': 'Action',
      'success': 'Success',
      'error': 'Error',
      'warning': 'Warning',
      'info': 'Info',
      'today': 'Today',
      'tomorrow': 'Tomorrow',
      'thisWeek': 'This Week',
      'thisMonth': 'This Month',
      'completedAssignments': 'Completed Assignments',
      'pendingAssignments': 'Pending Assignments',
      'lateSubmissions': 'Late Submissions',
      'averageGrade': 'Average Grade',
      'highestGrade': 'Highest Grade',
      'lowestGrade': 'Lowest Grade',
      'courseProgress': 'Course Progress',
      'currentLesson': 'Current Lesson',
      'nextLesson': 'Next Lesson',
      'courseDetails': 'Course Details',
      'courseInstructor': 'Course Instructor',
      'courseSchedule': 'Course Schedule',
      'courseRating': 'Course Rating',
      'courseReviews': 'Course Reviews',
      'courseEnrollment': 'Course Enrollment',
      'courseDuration': 'Course Duration',
      'courseLevel': 'Course Level',
      'courseCategory': 'Course Category',
      'coursePrerequisites': 'Course Prerequisites',
      'courseObjectives': 'Course Objectives',
      'courseRequirements': 'Course Requirements',
      'courseCertificate': 'Course Certificate',
      'courseFee': 'Course Fee',
      'courseStartDate': 'Course Start Date',
      'courseEndDate': 'Course End Date',
      'courseLocation': 'Course Location',
      'courseMode': 'Course Mode',
      'courseFormat': 'Course Format',
      'courseCredits': 'Course Credits',
      'courseHours': 'Course Hours',
      'courseSyllabus': 'Course Syllabus',
      'courseAnnouncements': 'Course Announcements',
      'courseDiscussions': 'Course Discussions',
      'courseGrades': 'Course Grades',
      'aPlus': 'A+',
      'a': 'A',
      'bPlus': 'B+',
      'aMinus': 'A-',
      'b': 'B',
      'bMinus': 'B-',
      'c': 'C',
      'cMinus': 'C-',
      'cPlus': 'C+',
      'd': 'D',
      'f': 'F',
      'assignment': 'Assignment',
      'courseAssignments': 'Course Assignments',
      'courseQuizzes': 'Course Quizzes',
      'courseExams': 'Course Exams',
      'courseProjects': 'Course Projects',
      'courseActivities': 'Course Activities',
      'courseAssessments': 'Course Assessments',
      'courseTests': 'Course Tests',
      'courseHomework': 'Course Homework',
      'courseLabs': 'Course Labs',
      'coursePracticals': 'Course Practicals',
      'courseTutorials': 'Course Tutorials',
      'courseLectures': 'Course Lectures',
      'courseVideos': 'Course Videos',
      'courseAudio': 'Course Audio',
      'courseDocuments': 'Course Documents',
      'courseImages': 'Course Images',
      'coursePDFs': 'Course PDFs',
      'coursePresentations': 'Course Presentations',
      'courseSpreadsheets': 'Course Spreadsheets',
      'courseArchives': 'Course Archives',
      'courseOther': 'Other',
      'event': 'Event',
      'ofOverallGrade': 'of Overall Grade',
      'markAsRead': 'Mark as Read',
      'takeAction': 'Take Action',
      'relatedNotifications': 'Related Notifications',
      'course': 'Course',
      'instructorName': 'Instructor Name',
      'courseDescriptionText': 'Course Description',
      'recommendedForYou': 'Recommended for You',
      'assignmentDescription': 'Assignment Description',
      'youHaveNewNotification': 'You have a new notification',
      'notificationMessagePlaceholder': 'You have a new announcement from your Computer Science course. Please check the details to stay updated with the latest information.',
      'assignmentReminder': 'Assignment Reminder',
      'assignmentDueTomorrow': 'Your assignment is due tomorrow',
      'courseUpdate': 'Course Update',
      'newMaterialsAdded': 'New materials added to CS101',
      'gradePosted': 'Grade Posted',
      'midtermGradeAvailable': 'Your midterm grade is available',
      'flutterDevelopment': 'Flutter Development',
      'webDevelopment': 'Web Development',
      'uiUxDesign': 'UI/UX Design',
      'dataScience': 'Data Science',
      'machineLearning': 'Machine Learning',
      'advancedFlutter': 'Advanced Flutter',
      'webSecurity': 'Web Security',
      'cloudComputing': 'Cloud Computing',
      'oneMinAgo': '1 min ago',
      'twoMinAgo': '2 min ago',
      'fiveMinAgo': '5 min ago',
      'tenMinAgo': '10 min ago',
      'fifteenMinAgo': '15 min ago',
      'twentyMinAgo': '20 min ago',
      'thirtyMinAgo': '30 min ago',
      'oneHourAgo': '1 hour ago',
      'twoHoursAgo': '2 hours ago',
      'threeHoursAgo': '3 hours ago',
      'oneDayAgo': '1 day ago',
      'twoDaysAgo': '2 days ago',
      'yesterday': 'Yesterday',
      'justNow': 'Just now',
      'checkOutNewWebDevelopmentCourse': 'Check out our new Web Development course',
      'yourGradeForAssignment': 'Your grade for the assignment',
      'pdfDocument': 'PDF Document',
      'fileSize24MB': '2.4 MB',
      'uploadDatePlaceholder': '2023-10-15',
      'resourceDescriptionPlaceholder': 'This resource contains important information about the course material. It includes examples, exercises, and additional reading materials to help you better understand the concepts covered in class.',
      'lectureNotesChapter1': 'Lecture Notes - Chapter 1',
      'assignmentGuidelines': 'Assignment Guidelines',
      'videoTutorialIntroduction': 'Video Tutorial - Introduction',
      'practiceQuestions': 'Practice Questions',
      'pdf': 'PDF',
      'docx': 'DOCX',
      'mp4': 'MP4',
      'fileSize12MB': '1.2 MB',
      'fileSize08MB': '0.8 MB',
      'fileSize452MB': '45.2 MB',
      'fileSize05MB': '0.5 MB',
      'share': 'Share',
      'reportIssue': 'Report Issue',
      'additionalResources': 'Additional Resources',
      'lessonNotesPdf': 'Lesson Notes.pdf',
      'previous': 'Previous',
      'markComplete': 'Mark Complete',
      'next': 'Next',
      'newCourseAvailable': 'New Course Available',
      'assignmentDueSoon': 'Assignment Due Soon',
      'upcomingEvent': 'Upcoming Event',
      'courseUpdateNotification': 'Course Update',
      'gradePostedNotification': 'Grade Posted',
      'newCourseAvailableDescription': 'A new course has been added to your learning path. Check out the latest Flutter Development course with comprehensive materials and practical exercises.',
      'assignmentDueSoonDescription': 'Your assignment for Computer Science 101 is due tomorrow. Please submit your work before the deadline to avoid penalties.',
      'upcomingEventDescription': 'Join our webinar on Mobile Development this Friday at 2 PM. Learn about the latest trends and best practices from industry experts.',
      'courseUpdateDescription': 'New materials have been added to your Flutter Development course. Check the updated content and practice exercises.',
      'gradePostedDescription': 'Your grade for the midterm exam in Computer Science has been posted. You can now view your score and feedback from the instructor.',
      'myCourses': 'My Courses',
      'continueLearning': 'Continue Learning',
      'popularCourses': 'Popular Courses',
      'assignmentDescriptionPlaceholder': 'This assignment requires you to implement a basic calculator application with addition, subtraction, multiplication, and division operations. The application should have a user-friendly interface and handle error cases properly.',
      'inProgress': 'In Progress',
      'passed': 'Passed',
      'failed': 'Failed',
      'courseResources': 'Course Resources',
      'textbookChapter1': 'Textbook Chapter 1',
      'assignmentGuidelinesPdf': 'Assignment Guidelines PDF',
      'downloadableMaterials': 'Downloadable Materials',
      'courseMaterials': 'Course Materials',
      'videoLecture': 'Video Lecture',
      'externalLink': 'External Link',
      'readingMaterial': 'Reading Material',
      'assignmentGuide': 'Assignment Guide',
      'downloads': 'Downloads',
      'newNotification': 'New Notification',
      'completedCourses': 'Completed Courses',
      'documents': 'Documents',
      'videos': 'Videos',
      'links': 'Links',
      'books': 'Books',
      'recentResources': 'Recent Resources',
      'resource': 'Resource',
      'resourceDescription': 'Resource Description',
      'courseSyllabusPdf': 'Course Syllabus PDF',
      'lectureVideoIntroduction': 'Lecture Video Introduction',
      'externalResourceLink': 'External Resource Link',
      'pending': 'Pending'
    },
  };
}

// =====================================================
// DELEGATE
// =====================================================
class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.supportedLocales.contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_) => false;
}
