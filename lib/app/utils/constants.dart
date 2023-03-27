import 'package:portfolio/app/data/model/nobuteco.dart';

import 'pages_details.dart';

var nobuteco = Nobuteco(
    name: 'noButeco App',
    url: 'https://nobuteco.page.link/app',
    urlOption: 'https://play.google.com/store/apps/details?id=com.nobuteco.nobutecoapp',
    subtTitle: 'interface_usuario',
    asset: 'asset/home_nobuteco.png',
    logo: 'asset/logo_app.png',
    pages: nobutecoPagesDetais,
    description: 'detail_usuario',
    instructions: [
      'project_user_1',
      'project_user_2',
      'project_user_3',
      'project_user_4',
      'project_user_5',
    ],
);
var nobutecoErp = Nobuteco(
    name: 'noButeco ERP',
    subtTitle: 'interface_bar',
    url: 'https://nobuteco.page.link/erp',
    urlOption: 'https://play.google.com/store/apps/details?id=com.nobuteco.nobuteco_web',
    asset: 'asset/home_erp.png',
    logo: 'asset/logo_erp.png',
    pages: nobutecoErpPagesDetais,
    description: 'detail_bar',
    instructions: [
      'project_bar_1',
      'project_bar_2',
      'project_bar_3',
      'project_bar_4',
    ],
);
var nobutecoBand = Nobuteco(
  name: 'noButeco Band',
  subtTitle: 'interface_band',
  asset: 'asset/nobutecoBand.jpeg',
  url: '',
  urlOption: '',
  pages: nobutecoBandPagesDetais,
  logo: 'asset/logo_app.png',
  description: 'detail_band',
  instructions: [
    'project_band_1',
    'project_band_2',
    'project_band_3',
    'project_band_4',
  ],
);
