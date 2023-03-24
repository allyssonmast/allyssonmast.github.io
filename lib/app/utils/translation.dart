import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static const locale = Locale('en', 'US');

  static const fallbackLocale = Locale('pt', 'BR');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'about_me': 'About me',
          'contact': 'Contact',
          'language': 'Language',
          'brazil': 'Natal - Brazil',
          'dark_mode': 'Dark Mode',
          'native_android': 'Native Android Applications',
          'mobile_software': 'Mobile Software Engineer',
          'kotlin_applications': 'Kotlin Applications',
          'access_my_kotlin': 'Access my kotlin applications by GitHub',
          "ufrn": "Federal University of Rio Grande do Norte",
          "mecanica": "Bachelor's Degree in Mechanical Engineering",
          "cet": "Bachelor's Degree in Science and Technology",
          "computacao": "Bachelor's Degree in Computer Engineering",
          "ilmenau": "Ilmenau University of Technology",
          "exchange": "University Exchange Program in Engineering",
          "descricaoComp": "Introduction to Software Engineering",
          'from': 'From',
          'to': 'To',
          'skill': 'Skill',
          'education': 'Education',
          'work': 'Work Experience',
          'about_me_text':
              'I am a software developer passionate about technology, curious to explore new possibilities and enthusiastic to create innovative solutions that solve real-world problems. I am constantly learning and pushing myself to improve my skills and stay up-to-date with the latest trends in mobile development. Outside of work, I enjoy reading about tech and traveling to new places to experience different cultures and traditions.',
          'hi_all': 'Hii all,\nI am Allysson!',
          'topics': 'Topics',
          'all': 'All',
          'nobute_description': _descriptionEn,
          'nobute_sub': 'Bar and restaurant management',
          'aplications': 'Applications',
          'problema': 'Problem',
          'proposta': 'Proposal',
          'recursos': 'Resources',
          'proximos_desafios': 'Next challenges',
          'rentabilidade': 'Profitability',
          'cardapio': 'Menu', 'reserva': 'Reservation', 'pesquisa': 'Search', 'pagamento': 'Payment'
        },
        'de_DE': {
          'about_me': 'Über mich',
          'contact': 'Kontakt',
          'language': 'Sprache',
          'brazil': 'Natal - Brasilien',
          'dark_mode': 'Dunkler Modus',
          'native_android': 'Native Android-Anwendungen',
          'mobile_software': 'Mobiler Software-Ingenieur',
          'kotlin_applications': 'Kotlin-Anwendungen',
          'access_my_kotlin':
              'Greifen Sie über GitHub auf meine Kotlin-Anwendungen zu',
          "ufrn": "Universität von Rio Grande do Norte",
          "mecanica": "Bachelor-Abschluss in Maschinenbau",
          "cet": "Bachelor-Abschluss in Wissenschaft und Technologie",
          "computacao": "Bachelor-Abschluss in Computer Engineering",
          "ilmenau": "Technische Universität Ilmenau",
          "exchange":
              "Universitätsaustauschprogramm in Ingenieurwissenschaften",
          "descricaoComp": "Einführung in die Software-Entwicklung",
          'from': 'Von',
          'to': 'Zu',
          'skill': 'Fähigkeit',
          'education': 'Bildung',
          'work': 'Arbeitserfahrung',
          'about_me_text':
              'Ich bin ein Software-Entwickler, der von Begeisterung für Technologie, Neugier auf neue Möglichkeiten und Enthusiasmus für die Schaffung innovativer Lösungen, die reale Probleme lösen, angetrieben wird. Ich lerne ständig dazu und fordere mich selbst heraus, um meine Fähigkeiten zu verbessern und auf dem neuesten Stand der neuesten Trends in der Mobile Entwicklung. Außerhalb der Arbeit lese ich gerne über Technologie und reise gerne an neue Orte, um verschiedene Kulturen und Traditionen zu erleben.',
          'hi_all': 'Hallo zusammer,\nIcb bin Allysson!',
          'topics': 'Themen',
          'all': 'Alle',
          'nobute_description': _descriptionDe,
          'nobute_sub': 'Bar- und Restaurantmanagement',
          'aplications': 'Anwendungen',
          'problema': 'Problem',
          'proposta': 'Vorschlag',
          'recursos': 'Ressourcen',
          'proximos_desafios': 'Nächste Herausforderungen',
          'rentabilidade': 'Rentabilität',
          'cardapio': 'Speisekarte', 'reserva': 'Reservierung', 'pesquisa': 'Suche', 'pagamento': 'Zahlung'
        },
        'pt_BR': {
          'about_me': 'Sobre mim',
          'contact': 'Contato',
          'language': 'Idioma',
          'brazil': 'Natal - Brasil',
          'dark_mode': 'Modo Noturno',
          'native_android': 'Aplicativos Android Nativo',
          'mobile_software': 'Engenheiro de Software Mobile',
          'kotlin_applications': 'Aplicações Kotlin',
          'access_my_kotlin': 'Acesse meus aplicativos Kotlin pelo GitHub',
          "ufrn": "Universidade Federal do Rio Grande do Norte",
          "mecanica": "Bacharel em Engenharia Mecânica",
          "cet": "Bacharel em Ciência e Tecnologia",
          "computacao": "Bacharel em Engenharia da Computação",
          "ilmenau": "Universidade Técnica de Ilmenau",
          "exchange": "Programa de Intercâmbio Universitário em Engenharia",
          "descricaoComp": "Introdução à Engenharia de Software",
          'from': 'De',
          'to': 'Até',
          'skill': 'Habilidade',
          'education': 'Educação',
          'work': 'Expeciência de Trabalho',
          'about_me_text':
              'Sou um desenvolvedor de software apaixonado por tecnologia, curioso para explorar novas possibilidades e entusiasmado para criar soluções inovadoras que resolvam problemas do mundo real. Estou constantemente aprendendo e me esforçando para melhorar minhas habilidades e me manter atualizado com as últimas tendências em desenvolvimento móvel. Fora do trabalho, gosto de ler sobre tecnologia e viajar para novos lugares e conhecer diferentes culturas e tradições.',
          'hi_all': 'Olá pessoal,\nEu sou o Allysson!',
          'topics': 'Tópicos',
          'all': 'Todos',
          'nobute_description': _descriptionPt,
          'nobute_sub': 'Gerenciamento de Bares e restaurantes',
          'aplications': 'Aplicativos',
          'problema': 'Problema',
          'proposta': 'Proposta',
          'recursos': 'Recursos',
          'proximos_desafios': 'Próximos desafios',
          'rentabilidade': 'Rentabilidade',
          'cardapio':'Cardapio',
          'reserva':'Reserva',
          'pesquisa':'Pesquisa',
          'pagamento':'Pagamento',
        },
      };
}

var map = {
  'nobute_sub': 'Gerenciamento de Bares e restaurantes',
  ' ': '',
  ' ': '',
  ' ': '',
  ' ': '',
  ' ': '',
  ' ': '',
  ' ': '',
  ' ': '',
  ' ': '',
};

var _descriptionDe =
    'noButeco ist eine Komplettlösung, die Bars und Restaurants dabei unterstützt, ihren Betrieb effizient zu verwalten. Mit dieser Anwendung können Sie alles kontrollieren, vom Lagerbestand über die Verwaltung von Bestellungen und Reservierungen bis hin zu Ihrem Veranstaltungsplan.\n\nMit einer intuitiven und benutzerfreundlichen Oberfläche ermöglicht Ihnen die Anwendung, das Menü zu verwalten, Kosten und Verkäufe zu kontrollieren sowie einen Veranstaltungsplan (Musik- oder Sportattraktionen) zu organisieren. Es ist auch möglich, Tische und Reservierungen in Echtzeit zu verwalten, um eine Überfüllung des Lokals zu vermeiden.\n\nnoButeco bietet auch Funktionen zur Verbesserung des Kundenerlebnisses, wie z. B. die Möglichkeit, Bestellungen direkt über die Anwendung aufzugeben, und die Integration mit Lieferplattformen, um Kunden, die lieber zu Hause essen, mehr Komfort zu bieten.\n\nMit einer intuitiven und benutzerfreundlichen Oberfläche ist unsere App ein unverzichtbares Tool für diejenigen, die ihre Unternehmensführung verbessern, die Produktivität steigern und das Kundenerlebnis verbessern möchten.';
var _descriptionEn =
    'noButeco is a complete solution to help bars and restaurants manage their operations efficiently. With this application, you can control everything from stock to managing orders and reservations, as well as your event schedule.\n\nWith an intuitive and friendly interface, the application allows you to manage the menu, control costs and sales, in addition to organizing an event schedule (musical or sports attractions). It is also possible to manage tables and reservations in real time, to avoid overcrowding the establishment.\n\nnoButeco also offers functionalities to improve the customer experience, such as the option to place orders directly through the application and integration with delivery platforms, to offer more convenience to customers who prefer to eat at home.\n\nWith an intuitive and easy-to-use interface, our app is an indispensable tool for those looking to improve their business management, increase productivity and improve the customer experience.';
var _descriptionPt =
    ' O noButeco é uma solução completa para ajudar bares e restaurantess a administrar suas operações de maneira eficiente. Com este aplicativo, é possível controlar desde o estoque até a gestão de pedidos e reservas como tambem sua agenda de eventos.\n\nCom uma interface intuitiva e amigável, o aplicativo permite gerenciar o cardápio, controlar os custos e as vendas, além de organizar uma agenda de eventos (atracoes musicais ou esportivas). É possível ainda fazer o gerenciamento de mesas e reservas em tempo real, para evitar a superlotação do estabelecimento.\n\nO noButeco oferece também funcionalidades para melhorar a experiência do cliente, como a opção de realizar pedidos diretamente pelo aplicativo e a integração com plataformas de delivery, para oferecer mais comodidade aos clientes que preferem comer em casa.\n\nCom uma interface intuitiva e fácil de usar, faz com que nosso app seja uma ferramenta indispensável para aqueles que buscam aprimorar a gestão do seu negócio, aumentar a produtividade e melhorar a experiência do cliente.';
