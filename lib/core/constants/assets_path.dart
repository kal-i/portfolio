const String _rootFolder = 'assets';
const String _fontsFolder = '$_rootFolder/fonts';
const String _iconsFolder = '$_rootFolder/icons';
const String _imagesFolder = '$_rootFolder/images';

class FontPath {}

class SvgIconPath {
  static const String _svg = '$_iconsFolder/svg';
  static const String cSharp = '$_svg/c#.svg';
  static const String dart = '$_svg/dart.svg';
  static const String figma = '$_svg/figma.svg';
  static const String flutter = '$_svg/flutter.svg';
  static const String git = '$_svg/git.svg';
  static const String java = '$_svg/java.svg';
  static const String mssqlserver = '$_svg/mssqlserver.svg';
  static const String postgresql = '$_svg/postgresql.svg';
  static const String postman = '$_svg/postman.svg';
}

class JpgImagePath {
  static const String _jpg = '$_imagesFolder/jpg';
  static const String animatedProfile = '$_jpg/animated_profile.jpg';
}

class SvgImagePath {
  static const String _svg = '$_imagesFolder/svg';
  static const String personalBrand = '$_svg/logo.svg';
  static const String buildingBlocks = '$_svg/building_blocks.svg';
}
