import 'dart:async';
import 'package:flutter/material.dart';

class AppLocalizations {
  static const List<String> supportedLocales = ['en', 'id'];

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String get title {
    return _localizedValues['title'] ?? '';
  }

  String get welcomeBack {
    return _localizedValues['welcomeBack'] ?? '';
  }

  String get signInToContinue {
    return _localizedValues['signInToContinue'] ?? '';
  }

  String get email {
    return _localizedValues['email'] ?? '';
  }

  String get password {
    return _localizedValues['password'] ?? '';
  }

  String get forgotPassword {
    return _localizedValues['forgotPassword'] ?? '';
  }

  String get signIn {
    return _localizedValues['signIn'] ?? '';
  }

  String get createNewAccount {
    return _localizedValues['createNewAccount'] ?? '';
  }

  String get name {
    return _localizedValues['name'] ?? '';
  }

  String get confirmPassword {
    return _localizedValues['confirmPassword'] ?? '';
  }

  String get register {
    return _localizedValues['register'] ?? '';
  }

  String get home {
    return _localizedValues['home'] ?? '';
  }

  String get courses {
    return _localizedValues['courses'] ?? '';
  }

  String get assignments {
    return _localizedValues['assignments'] ?? '';
  }

  String get grades {
    return _localizedValues['grades'] ?? '';
  }

  String get resources {
    return _localizedValues['resources'] ?? '';
  }

  String get courseResources {
    return _localizedValues['courseResources'] ?? '';
  }

  String get notifications {
    return _localizedValues['notifications'] ?? '';
  }

  String get profile {
    return _localizedValues['profile'] ?? '';
  }

  String get myCourses {
    return _localizedValues['myCourses'] ?? '';
  }

  String get continueLearning {
    return _localizedValues['continueLearning'] ?? '';
  }

  String get popularCourses {
    return _localizedValues['popularCourses'] ?? '';
  }

  String get dueDate {
    return _localizedValues['dueDate'] ?? '';
  }

  String get event {
    return _localizedValues['event'] ?? '';
  }

  String get status {
    return _localizedValues['status'] ?? '';
  }

  String get grade {
    return _localizedValues['grade'] ?? '';
  }

  String get subject {
    return _localizedValues['subject'] ?? '';
  }

  String get overallGrade {
    return _localizedValues['overallGrade'] ?? '';
  }

  String get language {
    return _localizedValues['language'] ?? '';
  }

  String get learning {
    return _localizedValues['learning'] ?? '';
  }

  String get learningManagementSystem {
    return _localizedValues['learningManagementSystem'] ?? '';
  }

  String get createAccount {
    return _localizedValues['createAccount'] ?? '';
  }

  String get fullName {
    return _localizedValues['fullName'] ?? '';
  }

  String get alreadyHaveAccount {
    return _localizedValues['alreadyHaveAccount'] ?? '';
  }

  String get settings {
    return _localizedValues['settings'] ?? '';
  }

  String get logout {
    return _localizedValues['logout'] ?? '';
  }

  String get download {
    return _localizedValues['download'] ?? '';
  }

  String get view {
    return _localizedValues['view'] ?? '';
  }

  String get submit {
    return _localizedValues['submit'] ?? '';
  }

  String get submitAssignment {
    return _localizedValues['submitAssignment'] ?? '';
  }

  String get cancel {
    return _localizedValues['cancel'] ?? '';
  }

  String get ok {
    return _localizedValues['ok'] ?? '';
  }

  String get or {
    return _localizedValues['or'] ?? '';
  }

  String get pleaseEnterYourName {
    return _localizedValues['pleaseEnterYourName'] ?? '';
  }

  String get pleaseEnterYourEmail {
    return _localizedValues['pleaseEnterYourEmail'] ?? '';
  }

  String get passwordMustBeAtLeast6Characters {
    return _localizedValues['passwordMustBeAtLeast6Characters'] ?? '';
  }

  String get passwordsDoNotMatch {
    return _localizedValues['passwordsDoNotMatch'] ?? '';
  }

  String get description {
    return _localizedValues['description'] ?? '';
  }

  String get defaultDueDate {
    return _localizedValues['defaultDueDate'] ?? '';
  }

  String get fileSubmission {
    return _localizedValues['fileSubmission'] ?? '';
  }

  String get chooseFile {
    return _localizedValues['chooseFile'] ?? '';
  }

  String get progress {
    return _localizedValues['progress'] ?? '';
  }

  String get completed {
    return _localizedValues['completed'] ?? '';
  }

  String get computerScience101 {
    return _localizedValues['computerScience101'] ?? '';
  }

  String get courseInstructorPlaceholder {
    return _localizedValues['courseInstructorPlaceholder'] ?? '';
  }

  String get flutterDevelopment {
    return _localizedValues['flutterDevelopment'] ?? '';
  }

  String get webDevelopment {
    return _localizedValues['webDevelopment'] ?? '';
  }

  String get uiUxDesign {
    return _localizedValues['uiUxDesign'] ?? '';
  }

  String get dataScience {
    return _localizedValues['dataScience'] ?? '';
  }

  String get machineLearning {
    return _localizedValues['machineLearning'] ?? '';
  }

  String get advancedFlutter {
    return _localizedValues['advancedFlutter'] ?? '';
  }

  String get webSecurity {
    return _localizedValues['webSecurity'] ?? '';
  }

  String get cloudComputing {
    return _localizedValues['cloudComputing'] ?? '';
  }

  String get courseDescriptionPlaceholder {
    return _localizedValues['courseDescriptionPlaceholder'] ?? '';
  }

  String get courseLevelIntermediate {
    return _localizedValues['courseLevelIntermediate'] ?? '';
  }

  String get lesson3AdvancedConcepts {
    return _localizedValues['lesson3AdvancedConcepts'] ?? '';
  }

  String get lesson4PracticalExercise {
    return _localizedValues['lesson4PracticalExercise'] ?? '';
  }

  String get lesson5FinalProject {
    return _localizedValues['lesson5FinalProject'] ?? '';
  }

  String get pending {
    return _localizedValues['pending'] ?? '';
  }

  String get inProgress {
    return _localizedValues['inProgress'] ?? '';
  }

  String get passed {
    return _localizedValues['passed'] ?? '';
  }

  String get failed {
    return _localizedValues['failed'] ?? '';
  }

  String get welcome {
    return _localizedValues['welcome'] ?? '';
  }

  String get quickStats {
    return _localizedValues['quickStats'] ?? '';
  }

  String get enrolledCourses {
    return _localizedValues['enrolledCourses'] ?? '';
  }

  String get inProgressCourses {
    return _localizedValues['inProgressCourses'] ?? '';
  }

  String get upcomingAssignments {
    return _localizedValues['upcomingAssignments'] ?? '';
  }

  String get recentGrades {
    return _localizedValues['recentGrades'] ?? '';
  }

  String get courseContent {
    return _localizedValues['courseContent'] ?? '';
  }

  String get lessons {
    return _localizedValues['lessons'] ?? '';
  }

  String get assignmentsList {
    return _localizedValues['assignmentsList'] ?? '';
  }

  String get resourcesList {
    return _localizedValues['resourcesList'] ?? '';
  }

  String get performance {
    return _localizedValues['performance'] ?? '';
  }

  String get breakdown {
    return _localizedValues['breakdown'] ?? '';
  }

  String get insights {
    return _localizedValues['insights'] ?? '';
  }

  String get academicStats {
    return _localizedValues['academicStats'] ?? '';
  }

  String get personalInfo {
    return _localizedValues['personalInfo'] ?? '';
  }

  String get academicInfo {
    return _localizedValues['academicInfo'] ?? '';
  }

  String get academicYear {
    return _localizedValues['academicYear'] ?? '';
  }

  String get changeLanguage {
    return _localizedValues['changeLanguage'] ?? '';
  }

  String get emailPlaceholder {
    return _localizedValues['emailPlaceholder'] ?? '';
  }

  String get gpa {
    return _localizedValues['gpa'] ?? '';
  }

  String get studentIdPlaceholder {
    return _localizedValues['studentIdPlaceholder'] ?? '';
  }

  String get computerScience {
    return _localizedValues['computerScience'] ?? '';
  }

  String get year3 {
    return _localizedValues['year3'] ?? '';
  }

  String get all {
    return _localizedValues['all'] ?? '';
  }

  String get unread {
    return _localizedValues['unread'] ?? '';
  }

  String get read {
    return _localizedValues['read'] ?? '';
  }

  String get category {
    return _localizedValues['category'] ?? '';
  }

  String get action {
    return _localizedValues['action'] ?? '';
  }

  String get success {
    return _localizedValues['success'] ?? '';
  }

  String get error {
    return _localizedValues['error'] ?? '';
  }

  String get warning {
    return _localizedValues['warning'] ?? '';
  }

  String get info {
    return _localizedValues['info'] ?? '';
  }

  String get today {
    return _localizedValues['today'] ?? '';
  }

  String get tomorrow {
    return _localizedValues['tomorrow'] ?? '';
  }

  String get thisWeek {
    return _localizedValues['thisWeek'] ?? '';
  }

  String get thisMonth {
    return _localizedValues['thisMonth'] ?? '';
  }

  String get completedAssignments {
    return _localizedValues['completedAssignments'] ?? '';
  }

  String get pendingAssignments {
    return _localizedValues['pendingAssignments'] ?? '';
  }

  String get lateSubmissions {
    return _localizedValues['lateSubmissions'] ?? '';
  }

  String get averageGrade {
    return _localizedValues['averageGrade'] ?? '';
  }

  String get highestGrade {
    return _localizedValues['highestGrade'] ?? '';
  }

  String get lowestGrade {
    return _localizedValues['lowestGrade'] ?? '';
  }

  String get courseProgress {
    return _localizedValues['courseProgress'] ?? '';
  }

  String get currentLesson {
    return _localizedValues['currentLesson'] ?? '';
  }

  String get nextLesson {
    return _localizedValues['nextLesson'] ?? '';
  }

  String get courseDetails {
    return _localizedValues['courseDetails'] ?? '';
  }

  String get courseInstructor {
    return _localizedValues['courseInstructor'] ?? '';
  }

  String get courseSchedule {
    return _localizedValues['courseSchedule'] ?? '';
  }

  String get courseRating {
    return _localizedValues['courseRating'] ?? '';
  }

  String get courseReviews {
    return _localizedValues['courseReviews'] ?? '';
  }

  String get courseEnrollment {
    return _localizedValues['courseEnrollment'] ?? '';
  }

  String get courseDuration {
    return _localizedValues['courseDuration'] ?? '';
  }

  String get courseLevel {
    return _localizedValues['courseLevel'] ?? '';
  }

  String get courseCategory {
    return _localizedValues['courseCategory'] ?? '';
  }

  String get coursePrerequisites {
    return _localizedValues['coursePrerequisites'] ?? '';
  }

  String get courseObjectives {
    return _localizedValues['courseObjectives'] ?? '';
  }

  String get courseRequirements {
    return _localizedValues['courseRequirements'] ?? '';
  }

  String get courseCertificate {
    return _localizedValues['courseCertificate'] ?? '';
  }

  String get courseFee {
    return _localizedValues['courseFee'] ?? '';
  }

  String get courseStartDate {
    return _localizedValues['courseStartDate'] ?? '';
  }

  String get courseEndDate {
    return _localizedValues['courseEndDate'] ?? '';
  }

  String get courseLocation {
    return _localizedValues['courseLocation'] ?? '';
  }

  String get courseMode {
    return _localizedValues['courseMode'] ?? '';
  }

  String get courseFormat {
    return _localizedValues['courseFormat'] ?? '';
  }

  String get courseCredits {
    return _localizedValues['courseCredits'] ?? '';
  }

  String get courseHours {
    return _localizedValues['courseHours'] ?? '';
  }

  String get courseSyllabus {
    return _localizedValues['courseSyllabus'] ?? '';
  }

  String get courseAnnouncements {
    return _localizedValues['courseAnnouncements'] ?? '';
  }

  String get courseDiscussions {
    return _localizedValues['courseDiscussions'] ?? '';
  }

  String get courseGrades {
    return _localizedValues['courseGrades'] ?? '';
  }

  String get aPlus {
    return _localizedValues['aPlus'] ?? '';
  }

  String get a {
    return _localizedValues['a'] ?? '';
  }

  String get bPlus {
    return _localizedValues['bPlus'] ?? '';
  }

  String get aMinus {
    return _localizedValues['aMinus'] ?? '';
  }

  String get assignment {
    return _localizedValues['assignment'] ?? '';
  }

  String get courseAssignments {
    return _localizedValues['courseAssignments'] ?? '';
  }

  String get courseQuizzes {
    return _localizedValues['courseQuizzes'] ?? '';
  }

  String get courseExams {
    return _localizedValues['courseExams'] ?? '';
  }

  String get courseProjects {
    return _localizedValues['courseProjects'] ?? '';
  }

  String get courseActivities {
    return _localizedValues['courseActivities'] ?? '';
  }

  String get courseAssessments {
    return _localizedValues['courseAssessments'] ?? '';
  }

  String get courseTests {
    return _localizedValues['courseTests'] ?? '';
  }

  String get courseHomework {
    return _localizedValues['courseHomework'] ?? '';
  }

  String get courseLabs {
    return _localizedValues['courseLabs'] ?? '';
  }

  String get coursePracticals {
    return _localizedValues['coursePracticals'] ?? '';
  }

  String get courseTutorials {
    return _localizedValues['courseTutorials'] ?? '';
  }

  String get courseLectures {
    return _localizedValues['courseLectures'] ?? '';
  }

  String get courseVideos {
    return _localizedValues['courseVideos'] ?? '';
  }

  String get courseAudio {
    return _localizedValues['courseAudio'] ?? '';
  }

  String get courseDocuments {
    return _localizedValues['courseDocuments'] ?? '';
  }

  String get courseImages {
    return _localizedValues['courseImages'] ?? '';
  }

  String get coursePDFs {
    return _localizedValues['coursePDFs'] ?? '';
  }

  String get coursePresentations {
    return _localizedValues['coursePresentations'] ?? '';
  }

  String get courseSpreadsheets {
    return _localizedValues['courseSpreadsheets'] ?? '';
  }

  String get courseArchives {
    return _localizedValues['courseArchives'] ?? '';
  }

  String get courseOther {
    return _localizedValues['courseOther'] ?? '';
  }

  String get ofOverallGrade {
    return _localizedValues['ofOverallGrade'] ?? '';
  }

  String get markAsRead {
    return _localizedValues['markAsRead'] ?? '';
  }

  String get takeAction {
    return _localizedValues['takeAction'] ?? '';
  }

  String get relatedNotifications {
    return _localizedValues['relatedNotifications'] ?? '';
  }

  String get searchCourses {
    return _localizedValues['searchCourses'] ?? '';
  }

  String get course {
    return _localizedValues['course'] ?? '';
  }

  String get instructorName {
    return _localizedValues['instructorName'] ?? '';
  }

  String get courseDescriptionText {
    return _localizedValues['courseDescriptionText'] ?? '';
  }

  String get recommendedForYou {
    return _localizedValues['recommendedForYou'] ?? '';
  }

  String get completedCourses {
    return _localizedValues['completedCourses'] ?? '';
  }

  String get dueInThreeDays {
    return _localizedValues['dueInThreeDays'] ?? '';
  }

  String get assignmentDescription {
    return _localizedValues['assignmentDescription'] ?? '';
  }

  String get assignmentDescriptionPlaceholder {
    return _localizedValues['assignmentDescriptionPlaceholder'] ?? '';
  }

  String get seeAll {
    return _localizedValues['seeAll'] ?? '';
  }

  String get checkOutNewWebDevelopmentCourse {
    return _localizedValues['checkOutNewWebDevelopmentCourse'] ?? '';
  }

  String get yourGradeForAssignment {
    return _localizedValues['yourGradeForAssignment'] ?? '';
  }

  String get twoHoursAgo {
    return _localizedValues['twoHoursAgo'] ?? '';
  }

  String get yesterday {
    return _localizedValues['yesterday'] ?? '';
  }

  String get justNow {
    return _localizedValues['justNow'] ?? '';
  }

  String get documents {
    return _localizedValues['documents'] ?? '';
  }

  String get videos {
    return _localizedValues['videos'] ?? '';
  }

  String get links {
    return _localizedValues['links'] ?? '';
  }

  String get books {
    return _localizedValues['books'] ?? '';
  }

  String get recentResources {
    return _localizedValues['recentResources'] ?? '';
  }

  String get resource {
    return _localizedValues['resource'] ?? '';
  }

  String get resourceDescription {
    return _localizedValues['resourceDescription'] ?? '';
  }

  String get courseSyllabusPdf {
    return _localizedValues['courseSyllabusPdf'] ?? '';
  }

  String get lectureVideoIntroduction {
    return _localizedValues['lectureVideoIntroduction'] ?? '';
  }

  String get externalResourceLink {
    return _localizedValues['externalResourceLink'] ?? '';
  }

  String get textbookChapter1 {
    return _localizedValues['textbookChapter1'] ?? '';
  }

  String get assignmentGuidelinesPdf {
    return _localizedValues['assignmentGuidelinesPdf'] ?? '';
  }

  String get downloadableMaterials {
    return _localizedValues['downloadableMaterials'] ?? '';
  }

  String get videoLecture {
    return _localizedValues['videoLecture'] ?? '';
  }

  String get externalLink {
    return _localizedValues['externalLink'] ?? '';
  }

  String get readingMaterial {
    return _localizedValues['readingMaterial'] ?? '';
  }

  String get assignmentGuide {
    return _localizedValues['assignmentGuide'] ?? '';
  }

  String get downloads {
    return _localizedValues['downloads'] ?? '';
  }

  String get courseMaterials {
    return _localizedValues['courseMaterials'] ?? '';
  }

  String get notificationSettings {
    return _localizedValues['notificationSettings'] ?? '';
  }

  String get notificationTitle {
    return _localizedValues['notificationTitle'] ?? '';
  }

  String get notificationMessage {
    return _localizedValues['notificationMessage'] ?? '';
  }

  String get newCourseAvailable {
    return _localizedValues['newCourseAvailable'] ?? '';
  }

  String get assignmentDueSoon {
    return _localizedValues['assignmentDueSoon'] ?? '';
  }

  String get upcomingEvent {
    return _localizedValues['upcomingEvent'] ?? '';
  }

  String get newNotification {
    return _localizedValues['newNotification'] ?? '';
  }

  String get checkOutNewFlutterCourse {
    return _localizedValues['checkOutNewFlutterCourse'] ?? '';
  }

  String get assignmentDueInTwoDays {
    return _localizedValues['assignmentDueInTwoDays'] ?? '';
  }

  String get webinarOnMobileDevelopment {
    return _localizedValues['webinarOnMobileDevelopment'] ?? '';
  }

  String get youHaveNewNotification {
    return _localizedValues['youHaveNewNotification'] ?? '';
  }

  String get notificationMessagePlaceholder {
    return _localizedValues['notificationMessagePlaceholder'] ?? '';
  }

  String get assignmentReminder {
    return _localizedValues['assignmentReminder'] ?? '';
  }

  String get assignmentDueTomorrow {
    return _localizedValues['assignmentDueTomorrow'] ?? '';
  }

  String get courseUpdate {
    return _localizedValues['courseUpdate'] ?? '';
  }

  String get newMaterialsAdded {
    return _localizedValues['newMaterialsAdded'] ?? '';
  }

  String get gradePosted {
    return _localizedValues['gradePosted'] ?? '';
  }

  String get midtermGradeAvailable {
    return _localizedValues['midtermGradeAvailable'] ?? '';
  }

  String get oneMinAgo {
    return _localizedValues['oneMinAgo'] ?? '';
  }

  String get twoMinAgo {
    return _localizedValues['twoMinAgo'] ?? '';
  }

  String get fiveMinAgo {
    return _localizedValues['fiveMinAgo'] ?? '';
  }

  String get tenMinAgo {
    return _localizedValues['tenMinAgo'] ?? '';
  }

  String get fifteenMinAgo {
    return _localizedValues['fifteenMinAgo'] ?? '';
  }

  String get twentyMinAgo {
    return _localizedValues['twentyMinAgo'] ?? '';
  }

  String get thirtyMinAgo {
    return _localizedValues['thirtyMinAgo'] ?? '';
  }

  String get oneHourAgo {
    return _localizedValues['oneHourAgo'] ?? '';
  }

  String get threeHoursAgo {
    return _localizedValues['threeHoursAgo'] ?? '';
  }

  String get oneDayAgo {
    return _localizedValues['oneDayAgo'] ?? '';
  }

  String get twoDaysAgo {
    return _localizedValues['twoDaysAgo'] ?? '';
  }

  String get pdfDocument {
    return _localizedValues['pdfDocument'] ?? '';
  }

  String get fileSize24MB {
    return _localizedValues['fileSize24MB'] ?? '';
  }

  String get uploadDatePlaceholder {
    return _localizedValues['uploadDatePlaceholder'] ?? '';
  }

  String get resourceDescriptionPlaceholder {
    return _localizedValues['resourceDescriptionPlaceholder'] ?? '';
  }

  String get lectureNotesChapter1 {
    return _localizedValues['lectureNotesChapter1'] ?? '';
  }

  String get assignmentGuidelines {
    return _localizedValues['assignmentGuidelines'] ?? '';
  }

  String get videoTutorialIntroduction {
    return _localizedValues['videoTutorialIntroduction'] ?? '';
  }

  String get practiceQuestions {
    return _localizedValues['practiceQuestions'] ?? '';
  }

  String get pdf {
    return _localizedValues['pdf'] ?? '';
  }

  String get docx {
    return _localizedValues['docx'] ?? '';
  }

  String get mp4 {
    return _localizedValues['mp4'] ?? '';
  }

  String get fileSize12MB {
    return _localizedValues['fileSize12MB'] ?? '';
  }

  String get fileSize08MB {
    return _localizedValues['fileSize08MB'] ?? '';
  }

  String get fileSize452MB {
    return _localizedValues['fileSize452MB'] ?? '';
  }

  String get fileSize05MB {
    return _localizedValues['fileSize05MB'] ?? '';
  }

  String get share {
    return _localizedValues['share'] ?? '';
  }

  String get reportIssue {
    return _localizedValues['reportIssue'] ?? '';
  }

  String get additionalResources {
    return _localizedValues['additionalResources'] ?? '';
  }

  String get lessonNotesPdf {
    return _localizedValues['lessonNotesPdf'] ?? '';
  }

  String get previous {
    return _localizedValues['previous'] ?? '';
  }

  String get markComplete {
    return _localizedValues['markComplete'] ?? '';
  }

  String get next {
    return _localizedValues['next'] ?? '';
  }

  String get newCourseAvailableDescription {
    return _localizedValues['newCourseAvailableDescription'] ?? '';
  }

  String get assignmentDueSoonDescription {
    return _localizedValues['assignmentDueSoonDescription'] ?? '';
  }

  String get upcomingEventDescription {
    return _localizedValues['upcomingEventDescription'] ?? '';
  }

  String get courseUpdateDescription {
    return _localizedValues['courseUpdateDescription'] ?? '';
  }

  String get gradePostedDescription {
    return _localizedValues['gradePostedDescription'] ?? '';
  }

  Map<String, String> get _localizedValues {
    if (_locale.languageCode == 'id') {
      return {
        'title': 'Learnix',
        'welcomeBack': 'Selamat Datang Kembali',
        'signInToContinue': 'Masuk untuk melanjutkan',
        'email': 'Email',
        'password': 'Kata Sandi',
        'forgotPassword': 'Lupa Kata Sandi?',
        'signIn': 'Masuk',
        'createNewAccount': 'Buat Akun Baru',
        'name': 'Nama',
        'confirmPassword': 'Konfirmasi Kata Sandi',
        'register': 'Daftar',
        'home': 'Beranda',
        'courses': 'Kursus',
        'assignments': 'Tugas',
        'grades': 'Nilai',
        'resources': 'Sumber',
                'courseResources': 'Sumber Kursus',
        'notifications': 'Notifikasi',
        'profile': 'Profil',
        'myCourses': 'Kursus Saya',
        'continueLearning': 'Lanjutkan Belajar',
        'popularCourses': 'Kursus Populer',
        'dueDate': 'Tanggal Jatuh Tempo',
        'status': 'Status',
        'grade': 'Nilai',
        'subject': 'Mata Pelajaran',
        'overallGrade': 'Nilai Keseluruhan',
        'language': 'Bahasa',
        'learning': 'Pembelajaran',
        'learningManagementSystem': 'Sistem Manajemen Pembelajaran',
        'createAccount': 'Buat Akun',
        'fullName': 'Nama Lengkap',
        'alreadyHaveAccount': 'Sudah Punya Akun?',
        'settings': 'Pengaturan',
        'logout': 'Keluar',
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
        'completed': 'Selesai',
        'computerScience101': 'Ilmu Komputer 101',
        'courseInstructorPlaceholder': 'Dr. John Smith',
        'courseDescriptionPlaceholder': 'Kursus ini mencakup konsep-konsep fundamental dalam ilmu komputer dan pemrograman.',
        'courseLevelIntermediate': 'Menengah',
        'lesson3AdvancedConcepts': 'Pelajaran 3: Konsep Lanjutan',
        'lesson4PracticalExercise': 'Pelajaran 4: Latihan Praktis',
        'lesson5FinalProject': 'Pelajaran 5: Proyek Akhir',
        'pending': 'Tertunda',
        'inProgress': 'Dalam Proses',
        'passed': 'Lulus',
        'failed': 'Gagal',
        'welcome': 'Selamat Datang',
        'quickStats': 'Statistik Cepat',
        'enrolledCourses': 'Kursus Terdaftar',
        'completedCourses': 'Kursus Selesai',
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
        'changeLanguage': 'Ubah Bahasa',
        'emailPlaceholder': 'john.doe@example.com',
        'gpa': 'IPK',
        'studentIdPlaceholder': 'S12345678',
        'computerScience': 'Ilmu Komputer',
        'academicYear': 'Tahun Akademik',
        'year3': 'Tahun 3',
        'all': 'Semua',
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
        'searchCourses': 'Cari Kursus',
        'course': 'Kursus',
        'instructorName': 'Nama Instruktur',
        'courseDescriptionText': 'Deskripsi Kursus',
        'recommendedForYou': 'Rekomendasi untuk Anda',
        'assignmentDescriptionPlaceholder': 'Tugas ini mengharuskan Anda untuk mengimplementasikan aplikasi kalkulator dasar dengan operasi penjumlahan, pengurangan, perkalian, dan pembagian. Aplikasi harus memiliki antarmuka yang ramah pengguna dan menangani kasus kesalahan dengan baik.',
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
        'newCourseAvailableDescription': 'Sebuah kursus baru telah ditambahkan ke jalur pembelajaran Anda. Lihat kursus Pengembangan Flutter terbaru dengan materi komprehensif dan latihan praktis.',
        'assignmentDueSoonDescription': 'Tugas Anda untuk Ilmu Komputer 101 jatuh tempo besok. Harap kirimkan pekerjaan Anda sebelum batas waktu untuk menghindari sanksi.',
        'upcomingEventDescription': 'Ikuti webinar kami tentang Pengembangan Mobile hari Jumat ini pukul 14.00. Pelajari tren terbaru dan praktik terbaik dari para ahli industri.',
        'courseUpdateDescription': 'Materi baru telah ditambahkan ke kursus Pengembangan Flutter Anda. Periksa konten terbaru dan latihan praktisnya.',
        'gradePostedDescription': 'Nilai Anda untuk ujian tengah semester di Ilmu Komputer telah diposting. Anda sekarang dapat melihat skor dan umpan balik dari instruktur.',
        'noCoursesFound': 'Tidak ada kursus yang ditemukan',
        'seeAll': 'Lihat Semua',
      };
    } else {
      // Default to English
      return {
        'title': 'Learnix',
        'welcomeBack': 'Welcome Back',
        'signInToContinue': 'Sign in to continue',
        'email': 'Email',
        'password': 'Password',
        'forgotPassword': 'Forgot Password?',
        'signIn': 'Sign In',
        'createNewAccount': 'Create New Account',
        'name': 'Name',
        'confirmPassword': 'Confirm Password',
        'register': 'Register',
        'home': 'Home',
        'courses': 'Courses',
        'assignments': 'Assignments',
        'grades': 'Grades',
        'resources': 'Resources',
                'courseResources': 'Course Resources',
        'notifications': 'Notifications',
        'profile': 'Profile',
        'myCourses': 'My Courses',
        'continueLearning': 'Continue Learning',
        'popularCourses': 'Popular Courses',
        'dueDate': 'Due Date',
        'status': 'Status',
        'grade': 'Grade',
        'subject': 'Subject',
        'overallGrade': 'Overall Grade',
        'language': 'Language',
        'learning': 'Learning',
        'learningManagementSystem': 'Learning Management System',
        'createAccount': 'Create Account',
        'fullName': 'Full Name',
        'alreadyHaveAccount': 'Already have an account?',
        'settings': 'Settings',
        'logout': 'Logout',
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
        'completed': 'Completed',
        'computerScience101': 'Computer Science 101',
        'courseInstructorPlaceholder': 'Dr. John Smith',
        'courseDescriptionPlaceholder': 'This course covers fundamental concepts in computer science and programming.',
        'courseLevelIntermediate': 'Intermediate',
        'lesson3AdvancedConcepts': 'Lesson 3: Advanced Concepts',
        'lesson4PracticalExercise': 'Lesson 4: Practical Exercise',
        'lesson5FinalProject': 'Lesson 5: Final Project',
        'pending': 'Pending',
        'inProgress': 'In Progress',
        'passed': 'Passed',
        'failed': 'Failed',
        'welcome': 'Welcome',
        'quickStats': 'Quick Stats',
        'enrolledCourses': 'Enrolled Courses',
        'completedCourses': 'Completed Courses',
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
        'changeLanguage': 'Change Language',
        'emailPlaceholder': 'john.doe@example.com',
        'gpa': 'GPA',
        'studentIdPlaceholder': 'S12345678',
        'computerScience': 'Computer Science',
        'academicYear': 'Academic Year',
        'year3': 'Year 3',
        'all': 'All',
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
        'searchCourses': 'Search Courses',
        'course': 'Course',
        'instructorName': 'Instructor Name',
        'courseDescriptionText': 'Course Description',
        'recommendedForYou': 'Recommended for You',
        'assignmentDescriptionPlaceholder': 'This assignment requires you to implement a basic calculator application with addition, subtraction, multiplication, and division operations. The application should have a user-friendly interface and handle error cases properly.',
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
        'seeAll': 'See All',
        'newCourseAvailableDescription': 'A new course has been added to your learning path. Check out the latest Flutter Development course with comprehensive materials and practical exercises.',
        'assignmentDueSoonDescription': 'Your assignment for Computer Science 101 is due tomorrow. Please submit your work before the deadline to avoid penalties.',
        'upcomingEventDescription': 'Join our webinar on Mobile Development this Friday at 2 PM. Learn about the latest trends and best practices from industry experts.',
        'courseUpdateDescription': 'New materials have been added to your Flutter Development course. Check the updated content and practice exercises.',
        'gradePostedDescription': 'Your grade for the midterm exam in Computer Science has been posted. You can now view your score and feedback from the instructor.',
        'noCoursesFound': 'No courses found',
        'searchCourses': 'Search courses...'}
      };
    }
  }

  final Locale _locale;

  AppLocalizations(this._locale);
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLocales.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}