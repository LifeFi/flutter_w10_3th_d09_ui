import 'dart:math';

String getImage({int width = 300, int height = 200}) {
  final random = Random();
  return 'https://picsum.photos/$width/$height?hash=${random.nextInt(10000)}';
}
