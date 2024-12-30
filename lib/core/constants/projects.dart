import '../models/project.dart';
import 'assets_path.dart';

final List<Project> projects = [
  const Project(
    imagePath: PngImagePath.desktopDashboard,
    title: 'QR Code Inventory Management and Item Tracking System',
    technology: [
      'Dart',
      'Flutter',
      'Dart Frog',
      'BLoC',
      'PostgresSQL',
      'REST API',
    ],
    description: 'A desktop and mobile system for inventory management.',
  ),
  const Project(
    imagePath: PngImagePath.desktopDashboard,
    title: 'Loan Management System (LMS)',
    technology: ['C#', 'MS SQL Server', 'Guna'],
    description: 'A robust loan management system.',
  ),
];
