import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'nome';
  String pathAvatar =
      'https://www.adobe.com/br/express/feature/image/media_142f9cf5285c2cdcda8375c1041d273a3f0383e5f.png?width=750&format=png&optimize=medium';
  String dataNascimento = 'data';

  void alteraDados() {
    name = 'Jackson Abrão';
    pathAvatar =
        'https://scontent-gru1-1.cdninstagram.com/v/t51.2885-15/329649763_706985334495646_8869729803407356442_n.jpg?stp=dst-jpg_e35_p720x720&_nc_ht=scontent-gru1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=vSXNuXIJ39QAX_cY3vd&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzAzMjU2MDYzMDk2ODgzMDA3Nw%3D%3D.2-ccb7-5&oh=00_AfADnZlVqSXgYWcXDXk8o-xL-6Pg8LtDDNeCIcCZvJVGXw&oe=63EDE931&_nc_sid=1527';
    dataNascimento = '14/02/1999';
    notifyListeners();
  }

  void alteraNome() {
    name = 'JACKSON';
    dataNascimento = '14/02/2000';
    notifyListeners();
  }
}
