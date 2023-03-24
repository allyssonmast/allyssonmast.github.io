import 'package:page/app/data/model/nobuteco.dart';

import 'pages_details.dart';

var nobuteco = Nobuteco(
    name: 'noButeco App',
    subtTitle: 'Customer Interface',
    asset: 'asset/home_nobuteco.png',
    logo: 'asset/logo_app.png',
    pages: nobutecoPagesDetais,
    description:
        'User interface for delivery and face-to-face orders. Google Maps to show you restaurants in your area and the music events that take place there.',
    instructions: [
      'Order for delivery and in person (without calling the waiter)',
      'Table Reservation',
      'Use the map and find bars in your area',
      'Qr Code to access the restaurant profile',
      'Payment by Pix and Credit Card',
    ]);
var nobutecoErp = Nobuteco(
    name: 'noButeco ERP',
    subtTitle: 'Restaurant Interface',
    asset: 'asset/home_erp.png',
    logo: 'asset/logo_erp.png',
    pages: nobutecoErpPagesDetais,
    description:
        'Restaurant interface to receive delivery and in person orders, register and edit products, search for musical attractions in the region.',
    instructions: []);
var nobutecoBand = Nobuteco(
    name: 'noButeco Band',
    subtTitle: 'Band Interface',
    asset: 'asset/nobutecoBand.jpeg',
    pages: nobutecoBandPagesDetais,
    logo: 'asset/logo_app.png',
    description:
        'interface for musicians and bands to connect with customers and fans. Look for opportunities in your region and inform your audience about your agenda.',
    instructions: [
      '',
      '',
      '',
      '',
    ]);
