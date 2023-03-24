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
          'cardapio': 'Menu',
          'reserva': 'Reservation',
          'pesquisa': 'Search',
          'pagamento': 'Payment',
          'problems_project': 'Problems faced by bars and restaurants when they do not digitize and automate their services:\n\n\n* Increased wait time for customers, which can lead to dissatisfaction and loss of business.\n\n* Possibility of errors in order taking, which can create extra work and customer dissatisfaction.\n\n* Inefficient management of inventory and suppliers, which can affect the quality of products and services offered\n\n* Difficulty generating invoices, which can lead to legal and tax issues.\n\n* Difficulty managing table reservations and controlling customer flow.\n\n* Difficulty dynamically updating menus, which can lead to confusion and customer dissatisfaction.\n\n* Difficulty in customer retention and creating rewards programs.\n\n* Missed marketing and promotional opportunities since they cannot reach a large number of customers through digital platforms.\n\n* Digitizing and automating these services can bring various benefits to bars and restaurants, such as improving the customer experience, increasing efficiency, and reducing costs. Additionally, it can enable the creation of new business opportunities and customer loyalty.'  ,
          'proposta_text':'The NoButeco app offers a comprehensive solution to the problems faced by bars and restaurants that still operate in a traditional way. With NoButeco, establishments can digitize and automate their services, significantly improving operational efficiency and the customer experience.\n\n\nWith NoButeco, customers can place orders directly on their smartphones, allowing bars and restaurants to quickly process orders and reduce customer wait times. Additionally, the app allows customers to view the menu in a dynamic and interactive way, with photos and detailed information about dishes, ingredients, and prices.\n\n\nNoButeco also offers table reservation features, allowing customers to reserve a table in advance and avoid unnecessary waits. Furthermore, the app provides information on reservation status and estimated wait times for tables.\n\n\nThe app also offers a range of features for bar and restaurant owners and managers, including inventory management systems, sales reports, and data analytics on customer preferences. This allows establishments to adjust their menus and offerings based on customer needs and improve their operational processes.\n\n\nIn summary, NoButeco is a complete solution to the challenges faced by bars and restaurants in digitizing and automating their services. With the app, establishments can improve efficiency, reduce errors, and provide a more convenient and personalized experience for their customers.',
          'proximos_desafios_text':'Members Club:\n\n\n* Creation of a club for pub goers, where members would have access to exclusive advantages such as special promotions, free couvert, and priority on the reservation list.\n\n* Encouragement of customer loyalty and increase in revenue for NoButeco\'s partner establishments.\n\n\nElectronic invoice:\n\n\n* Automatic generation of electronic invoices for transactions made through the app.\n\n* Simplification of life for customers and bar/restaurant owners, as the entire process would be automated and digital.\n\n\nAdditional features:\n\n\n* Integration with loyalty programs.\n\n* Ability to rate bars and restaurants directly through the app.\n\n* Offering discounts on Uber or public transportation to encourage app usage and make access to establishments easier.\n\n\nFuture challenge:\n\n\n* Continue to develop new features that can add value to users and bar/restaurant partners.\n\n* Offer increasingly innovative and practical solutions.',
          'band_home_1':'Get reminders of your upcoming events',
          'band_home_2':'Receive invitations to perform at bars and restaurants',
          'band_home_3':'Chat to settle details with contractors',
          'band_buscar_1':'Search for opportunities to perform at bars and restaurants',
          'band_buscar_2':'Apply for vacancies and agreements according to your music genre',
          'band_agenda_1':'Organize your schedule of shows',
          'band_agenda_2':'Add new events to your agenda',
          'band_pagamento':'Subscribe to the premium plan to have advantages such as unlimited registration in events',
          'band_perfil':'See how your profile looks for display to customers and your audience',
          'agenda':'Schedule',
          'perfil':'Profile',
          'historico':'History',
          'produtos':'Products',
          'assinatura':'Subscription',
          'garcom':'Waiter',
          'bar_home_1':'Receive orders directly from the customer.',
          'bar_home_2':'Search for tables and the order status.',
          'bar_home_3':'Know if any customer needs help (the bell indicates this).',
          'bar_home_4':'Add products or create new orders if the customer does not want to use the app.',
          'bar_home_5':'Organize orders according to their status and time.',
          'bar_home_6':'Send notifications to the customer when changing the order status individually by product (Pending, Confirmed, Delivered).',
          'bar_home_7':'Have a complete view of occupied and available tables. Inform the number of tables available in your establishment.',
          'bar_home_8':'Keep an eye on delivery orders.',
          'bar_pagamento_1': 'Track orders and the status of the order and products (Pending, Confirmed, Completed)',
          'bar_pagamento_2': 'Add fees or services such as cover charge, waiter service charge',
          'bar_pagamento_3': 'Change the status of the delivery order to Analyzing, Preparing, Shipped',
          'bar_pagamento_4': 'Send notification to the customer for each change',
          'bar_pagamento_5': 'Know the payment method',
          'bar_historico_1': 'Track your daily revenue in real-time',
          'bar_historico_2': 'See the different payment methods and when you received payment for each one',
          'bar_historico_3': 'Know which products are the bestsellers each day',
          'bar_historico_4': 'Track all sales separated by order',
          'bar_historico_5': 'Receive reviews and comments about your company',
          'bar_reserva_1':'Track new reservation requests directly made by customers',
          'bar_reserva_2':'Organize your reservations by day and get ready to receive your guests',
          'bar_reserva_3':'Manually add new reservations',
          'bar_reserva_4':'Get in touch with your customers if their reservation is available',
          'bar_reserva_5':'Send notification when changing the status of the reservation to confirmed',
          'bar_reserva_6':'From the reservation, create a tab for your customer by choosing a vacant table, making it easier for the user.',
          'bar_happy':'Set the schedule and products for your happy hour',
          'bar_produtos_1':'Edit or add new products to your menu',
          'bar_produtos_2':'Keep track of your inventory',
          'bar_produtos_3':'Your events are also considered products',
          'bar_produtos_4':'Choose attractions that played at your event',
          'bar_produtos_5':'Post your event on your Instagram account directly through noButeco',
          'bar_perfil_1':'Add information about your company',
          'bar_perfil_2':'Inform your opening hours',
          'bar_perfil_3':'Enable the option to receive reservations and specify the hours in which they are allowed',
          'bar_assinatura_1':'Subscribe to the premium version and get advantages',
          'bar_login_1':'Use the test login email: c@hotmail.com password: 123456',
          'bar_login_2':'Create a new account quickly',
          'bar_login_3':'Change your password if you have forgotten it',
          'bar_qr_1':'',
          'bar_qr_2':'Create individual QR codes (one for each table)',
          'bar_qr_3':'Let your customers have easy access to your menu',
          'bar_garcom_1':'Register your waiters',
          'bar_garcom_2':'Enable waiters who can change important data',
          'bar_band_1':'Register opportunities for new bands to play at your club',
          'bar_band_2':'Contact bands in your region',
          'bar_band_3':'See the bands that showed interest in your announcement'
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
          'cardapio': 'Speisekarte',
          'reserva': 'Reservierung',
          'pesquisa': 'Suche',
          'pagamento': 'Zahlung',
          'problems_project': 'Probleme von Bars und Restaurants, wenn sie ihre Dienstleistungen nicht digitalisieren und automatisieren:\n\n\n* Verlängerte Wartezeiten für Kunden, die zu Unzufriedenheit und Umsatzverlust führen können.\n\n* Möglichkeit von Fehlern bei der Bestellaufnahme, was zusätzliche Arbeit und Unzufriedenheit bei Kunden verursachen kann\n\n* Ineffizientes Management von Inventar und Lieferanten, was sich auf die Qualität der angebotenen Produkte und Dienstleistungen auswirken kann.\n\n* Schwierigkeiten bei der Erstellung von Rechnungen, was zu rechtlichen und steuerlichen Problemen führen kann.\n\n* Schwierigkeiten bei der Verwaltung von Tischreservierungen und der Kontrolle des Kundenflusses.\n\n* Schwierigkeiten bei der dynamischen Aktualisierung von Menüs, was zu Verwirrung und Unzufriedenheit bei Kunden führen kann.\n\n* Schwierigkeiten bei der Kundenbindung und der Schaffung von Belohnungsprogrammen.\n\n* Verpasste Marketing- und Werbemöglichkeiten, da sie über digitale Plattformen nicht viele Kunden erreichen können.\n\n* Die Digitalisierung und Automatisierung dieser Dienste kann verschiedene Vorteile für Bars und Restaurants bringen, wie die Verbesserung des Kundenerlebnisses, die Steigerung der Effizienz und die Kostensenkung. Außerdem kann es die Schaffung neuer Geschäftsmöglichkeiten und die Kundenbindung ermöglichen.',
          'proposta_text':'Die NoButeco-App bietet eine umfassende Lösung für die Probleme von Bars und Restaurants, die immer noch auf traditionelle Weise betrieben werden. Mit NoButeco können Einrichtungen ihre Dienstleistungen digitalisieren und automatisieren und die Betriebseffizienz und das Kundenerlebnis erheblich verbessern.\n\n\nMit NoButeco können Kunden ihre Bestellungen direkt auf ihren Smartphones aufgeben, was es Bars und Restaurants ermöglicht, Bestellungen schnell zu bearbeiten und die Wartezeiten der Kunden zu reduzieren. Darüber hinaus ermöglicht die App Kunden, das Menü auf dynamische und interaktive Weise mit Fotos und detaillierten Informationen zu Gerichten, Zutaten und Preisen anzuzeigen.\n\n\nNoButeco bietet auch Funktionen zur Tischreservierung, die es Kunden ermöglichen, im Voraus einen Tisch zu reservieren und unnötige Wartezeiten zu vermeiden. Darüber hinaus bietet die App Informationen zum Reservierungsstatus und geschätzten Wartezeiten für Tische.\n\n\nDie App bietet auch eine Reihe von Funktionen für Bar- und Restaurantbesitzer und -manager, einschließlich Inventarverwaltungssystemen, Verkaufsberichten und Datenanalysen zu Kundenpräferenzen. Dies ermöglicht es Einrichtungen, ihre Menüs und Angebote an Kundenbedürfnisse anzupassen und ihre Betriebsprozesse zu verbessern.\n\n\nZusammenfassend ist NoButeco eine umfassende Lösung für die Herausforderungen, mit denen Bars und Restaurants bei der Digitalisierung und Automatisierung ihrer Dienstleistungen konfrontiert sind. Mit der App können Einrichtungen die Effizienz verbessern, Fehler reduzieren und ein bequemeres und personalisiertes Erlebnis für ihre Kunden bieten.',
          'proximos_desafios_text':'Mitgliederclub:\n\n\n* Gründung eines Clubs für Kneipenbesucher, in dem Mitglieder exklusive Vorteile wie Sonderangebote, kostenloses Couvert und Priorität auf der Reservierungsliste haben.\n\n* Förderung der Kundenbindung und Steigerung des Umsatzes für NoButecos Partnerbetriebe.\n\n\nElektronische Rechnung:\n\n\n* Automatische Generierung von elektronischen Rechnungen für Transaktionen, die über die App getätigt wurden.\n\n* Vereinfachung des Lebens für Kunden und Bar-/Restaurantbesitzer, da der gesamte Prozess automatisiert und digitalisiert wäre.\n\n\nZusätzliche Funktionen:\n\n\n*Integration mit Treueprogrammen.\n\n* Möglichkeit zur Bewertung von Bars und Restaurants direkt über die App.\n\n* Angebot von Rabatten auf Uber oder öffentliche Verkehrsmittel, um die App-Nutzung zu fördern und den Zugang zu Einrichtungen zu erleichtern.\n\n\nZukünftige Herausforderung:\n\n\n*Fortsetzung der Entwicklung neuer Funktionen, die den Nutzern und Bar-/Restaurantpartnern einen Mehrwert bieten können.\n\n* Angebot immer innovativerer und praktischerer Lösungen.',
          'band_home_1':'Erhalte Erinnerungen an deine kommenden Veranstaltungen',
          'band_home_2':'Erhalte Einladungen, um in Bars und Restaurants aufzutreten',
          'band_home_3':'Chatte, um Details mit Auftragnehmern zu klären',
          'band_buscar_1':'Suche nach Möglichkeiten, in Bars und Restaurants aufzutreten',
          'band_buscar_2':'Bewerben Sie sich für Stellenangebote und Vereinbarungen entsprechend Ihrem Musikgenre',
          'band_agenda_1':'Organisieren Sie Ihren Zeitplan für Shows',
          'band_agenda_2':'Fügen Sie neue Ereignisse zu Ihrer Agenda hinzu',
          'band_pagamento':'Abonnieren Sie den Premium-Plan, um Vorteile wie unbegrenzte Registrierung bei Veranstaltungen zu haben',
          'band_perfil':'Sehen Sie, wie Ihr Profil für die Anzeige bei Kunden und Ihrem Publikum aussieht',
          'agenda':'Zeitplan',
          'perfil':'Profil',
          'historico':'Geschichte',
          'produtos':'Produkte',
          'assinatura':'Abonnement',
          'garcom':'Kellner',
          'bar_home_1':'Erhalten Sie Bestellungen direkt vom Kunden.',
          'bar_home_2':'Suchen Sie nach Tischen und dem Bestellstatus.',
          'bar_home_3':'Wissen Sie, ob ein Kunde Hilfe benötigt (die Glocke zeigt dies an).',
          'bar_home_4':'Fügen Sie Produkte hinzu oder erstellen Sie neue Bestellungen, wenn der Kunde die App nicht verwenden möchte.',
          'bar_home_5':'Organisieren Sie Bestellungen nach ihrem Status und Zeitpunkt.',
          'bar_home_6':'Senden Sie Benachrichtigungen an den Kunden, wenn sich der Bestellstatus individuell nach Produkt ändert (ausstehend, bestätigt, geliefert).',
          'bar_home_7':'Haben Sie eine vollständige Übersicht über besetzte und verfügbare Tische. Informieren Sie die Anzahl der Tische in Ihrem Betrieb.',
          'bar_home_8':'Behalten Sie Lieferbestellungen im Auge.',
          'bar_pagamento_1': 'Verfolgen Sie Bestellungen und den Status der Bestellung und Produkte (Ausstehend, Bestätigt, Abgeschlossen)',
          'bar_pagamento_2': 'Fügen Sie Gebühren oder Dienstleistungen wie Gedeck- oder Kellner-Servicegebühr hinzu',
          'bar_pagamento_3': 'Ändern Sie den Status der Lieferbestellung auf Analyse, Vorbereitung, Versendet',
          'bar_pagamento_4': 'Senden Sie für jede Änderung eine Benachrichtigung an den Kunden',
          'bar_pagamento_5': 'Wissen Sie, welche Zahlungsmethode verwendet wird',
          'bar_historico_1': 'Verfolgen Sie Ihre täglichen Einnahmen in Echtzeit',
          'bar_historico_2': 'Sehen Sie die verschiedenen Zahlungsmethoden und wann Sie für jede Zahlung erhalten haben',
          'bar_historico_3': 'Wissen Sie, welche Produkte jeden Tag am besten verkauft werden',
          'bar_historico_4': 'Verfolgen Sie alle Verkäufe getrennt nach Bestellung',
          'bar_historico_5': 'Erhalten Sie Bewertungen und Kommentare zu Ihrem Unternehmen',
          'bar_reserva_1':'Verfolgen Sie neue Reservierungsanfragen, die direkt von Kunden gestellt werden',
          'bar_reserva_2':'Organisieren Sie Ihre Reservierungen nach Tag und machen Sie sich bereit, Ihre Gäste zu empfangen',
          'bar_reserva_3':'Fügen Sie manuell neue Reservierungen hinzu',
          'bar_reserva_4':'Kontaktieren Sie Ihre Kunden, wenn ihre Reservierung verfügbar ist',
          'bar_reserva_5':'Senden Sie eine Benachrichtigung, wenn sich der Status der Reservierung auf bestätigt ändert',
          'bar_reserva_6':'Erstellen Sie aus der Reservierung heraus eine Registerkarte für Ihren Kunden, indem Sie einen freien Tisch auswählen und dem Benutzer die Nutzung erleichtern.',
          'bar_happy':'Legen Sie den Zeitplan und die Produkte für Ihre Happy Hour fest',
          'bar_produtos_1':'Bearbeiten oder fügen Sie neue Produkte zu Ihrer Speisekarte hinzu',
          'bar_produtos_2':'Behalten Sie Ihre Lagerbestände im Blick',
          'bar_produtos_3':'Ihre Veranstaltungen gelten ebenfalls als Produkte',
          'bar_produtos_4':'Wählen Sie Attraktionen aus, die bei Ihrer Veranstaltung gespielt haben',
          'bar_produtos_5':'Posten Sie Ihre Veranstaltung direkt über noButeco auf Ihrem Instagram-Account',
          'bar_perfil_1':'Fügen Sie Informationen über Ihr Unternehmen hinzu',
          'bar_perfil_2':'Geben Sie Ihre Öffnungszeiten an',
          'bar_perfil_3':'Aktivieren Sie die Option zum Empfangen von Reservierungen und geben Sie die Stunden an, in denen sie erlaubt sind',
          'bar_assinatura_1':'Abonnieren Sie die Premium-Version und erhalten Sie Vorteile',
          'bar_login_1':'Verwenden Sie den Test-Login E-Mail: c@hotmail.com Passwort: 123456',
          'bar_login_2':'Erstellen Sie schnell ein neues Konto',
          'bar_login_3':'Ändern Sie Ihr Passwort, falls Sie es vergessen haben',
          'bar_qr_1':'',
          'bar_qr_2':'Erstellen Sie individuelle QR-Codes (einen für jeden Tisch)',
          'bar_qr_3':'Geben Sie Ihren Kunden einen einfachen Zugang zu Ihrer Speisekarte',
          'bar_garcom_1': 'Registrieren Sie Ihre Kellner',
          'bar_garcom_2': 'Aktivieren Sie Kellner, die wichtige Daten ändern können',
          'bar_band_1': 'Registrieren Sie Möglichkeiten für neue Bands, in Ihrem Club zu spielen',
          'bar_band_2': 'Kontaktieren Sie Bands aus Ihrer Region',
          'bar_band_3': 'Sehen Sie sich die Bands an, die an Ihrem Angebot interessiert sind',
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
          'cardapio': 'Cardapio',
          'reserva': 'Reserva',
          'pesquisa': 'Pesquisa',
          'pagamento': 'Pagamento',
          'problems_project': 'Problemas enfrentados por bares e restaurantes ao não digitalizarem e automatizarem seus serviços:\n\n\n* Aumento do tempo de espera para os clientes, o que pode levar à insatisfação e perda de clientes.\n\n* Possibilidade de erros na anotação dos pedidos, o que pode gerar retrabalho e insatisfação dos clientes.\n\n* Falta de eficiência na gestão de estoque e fornecedores, o que pode afetar a qualidade dos produtos e serviços oferecidos.\n\n* Dificuldade na geração de nota fiscal, o que pode gerar problemas legais e tributários.\n\n* Dificuldade na gestão da reserva de mesas e controle do fluxo de clientes.\n\n* Dificuldade na atualização dinâmica do cardápio, o que pode gerar confusão e insatisfação dos clientes.\n\n* Dificuldade na fidelização dos clientes e na criação de programas de recompensas.\n\n* Perda de oportunidades de marketing e promoções, já que não é possível atingir um grande número de clientes por meio de plataformas digitais.\n\n\nA digitalização e automatização desses serviços pode trazer diversos benefícios para os bares e restaurantes, como a melhoria da experiência do cliente, aumento da eficiência e redução de custos. Além disso, pode permitir a criação de novas oportunidades de negócios e fidelização de clientes.',
          'proposta_text':'O aplicativo NoButeco oferece uma solução abrangente para os problemas de bares e restaurantes que ainda operam de maneira tradicional. Com o NoButeco, os estabelecimentos podem digitalizar e automatizar seus serviços, melhorando significativamente a eficiência operacional e a experiência do cliente.\n\n\nCom o NoButeco, os clientes podem fazer pedidos diretamente em seus smartphones, permitindo que os bares e restaurantes processem rapidamente os pedidos e reduzam o tempo de espera dos clientes. Além disso, o aplicativo permite que os clientes visualizem o cardápio de maneira dinâmica e interativa, com fotos e informações detalhadas sobre os pratos, ingredientes e preços.\n\n\nO NoButeco também oferece recursos de reserva de mesa, permitindo que os clientes reservem uma mesa com antecedência e evitem esperas desnecessárias. Além disso, o aplicativo também fornece informações sobre o status das reservas e o tempo estimado de espera para a mesa.\n\n\nO aplicativo também oferece uma série de recursos para os proprietários e gerentes de bares e restaurantes, incluindo um sistema de gerenciamento de estoque, relatórios de vendas e análises de dados sobre as preferências dos clientes. Isso permite que os estabelecimentos ajustem seus menus e ofertas de acordo com as necessidades dos clientes e melhorem seus processos operacionais.\n\n\nEm resumo, o NoButeco é uma solução completa para os desafios enfrentados pelos bares e restaurantes em relação à digitalização e automação de seus serviços. Com o aplicativo, os estabelecimentos podem melhorar a eficiência, reduzir os erros e fornecer uma experiência mais conveniente e personalizada para seus clientes.',
          'proximos_desafios_text':'Clube de usuários:\n\n\n* Criação de um clube de frequentadores de bares, onde os membros teriam acesso a vantagens exclusivas, como promoções especiais, couvert grátis e preferência na lista de reserva.\n\n* Incentivo à fidelização dos clientes e aumento da receita dos estabelecimentos parceiros do NoButeco.\n\n\nNota fiscal eletrônica:\n\n\n* Geração automática de nota fiscal eletrônica para as transações realizadas pelo app.\n\n* Facilitação da vida dos clientes e dos proprietários de bares e restaurantes, uma vez que todo o processo seria automatizado e digital.\n\n\nFuncionalidades adicionais:\n\n\n* Integração com programas de fidelidade.\n\n* Possibilidade de avaliar bares e restaurantes diretamente pelo app.\n\n* Oferta de descontos em Uber ou transporte público para incentivar a utilização do app e tornar o acesso aos estabelecimentos mais fácil.\n\n\nDesafio futuro:\n\n\n* Continuar a desenvolver novas funcionalidades que possam agregar valor aos seus usuários e parceiros de bares e restaurantes.\n\n* Oferecer soluções cada vez mais inovadoras e práticas.',
          'band_home_1':'Seja lembrado dos seus próximos eventos',
          'band_home_2':'Receba convites para se apresentar em bares e restaurantes',
          'band_home_3':'Chat para acertar detalhes com contratantes',
          'band_buscar_1':'Procure por oportunidades de se apresentar em bares e restaurantes',
          'band_buscar_2':'Aplique para vagas e acordo com seu gênero musical',
          'band_agenda_1':'Organize sua agenda de shows',
          'band_agenda_2':'Adicione novos eventos na sua agenda',
          'band_pagamento':'Assine o plano premio para ter vantagens como inscriçao ilimitada em eventos',
          'band_perfil':'Veja como fica seu perfil para exibição aos clientes e seu público',
          'agenda':'Agenda',
          'perfil':'Perfil',
          'historico':'Historico',
          'produtos':'Produtos',
          'assinatura':'Assinatura',
          'garcom':'Garçom',
          'bar_home_1':'Receba pedidos diretamente do cliente.',
          'bar_home_2':'Procure por mesas e o status do pedido',
          'bar_home_3':'Saiba se algum cliente prcisa de ajuda (o sino indica isso)',
          'bar_home_4':'Adicione produtos ou crie novas comandas caso o cliente nao queira usar o app',
          'bar_home_5':'Organize os pedidos de de acordo com seu status e o horário',
          'bar_home_6':'Envie notificação para o cliente quando alterar o status do pedido individualmente por produto (Pendente, Confirmado, Entregue',
          'bar_home_7':'Tenha uma visão completa das mesas ocupadas e disponiveis. Informe o número de mesas disponíveis em seu estabelecimento',
          'bar_home_8':'Fique de olho nos pedidos por delivery',
          'bar_pagamento_1':'Acompanhe as comandas e o status do pedido e dos produtos (Pendente, Confirmado, Concluído',
          'bar_pagamento_2':'Adicione taxas ou serviços como couvert, taxa de serviço do garçom',
          'bar_pagamento_3':'Altere o status do pedido por delivery em Análise, Preparação, Enviado',
          'bar_pagamento_4':'Envie notificação para o cliente a cada alteração',
          'bar_pagamento_5':'Saiba o método de pagamento',
          'bar_historico_1':'Acompanhe em tempo real sua receita por dia',
          'bar_historico_2':'Veja os diferentes métodos de pagamento e quando você recebeu por cada um',
          'bar_historico_3':'Saiba quais são os produtos mais vendidos por dia',
          'bar_historico_4':'Acompanhe todas as vendas separadas por pedido',
          'bar_historico_5':'Receba avaliações e comentários sobre sua empresa',
          'bar_reserva_1':'Acompanhe novos pedidos de reserva diretamente feitas pelos clientes',
          'bar_reserva_2':'Organize suas reservas por dia e se prepare para receber seus clientes',
          'bar_reserva_3':'Adicione novas reservas manualmente',
          'bar_reserva_4':'Entre em contato com seus clientes caso a reserva dele esteja disponível',
          'bar_reserva_5':'Envie notifição quando alterar o status da reserva para confirmado',
          'bar_reserva_6':'Apartir da reserva, crie uma comanda para seu cliente escolhendo uma mesa vaga, facilitando a vida do usuário.',
          'bar_happy':'Estabeleça o horário e os produtos de seu happyhour',
          'bar_produtos_1':'Edite ou adicione novos produtos ao seu cardápio',
          'bar_produtos_2':'Tenha o controle de seu estoque',
          'bar_produtos_3':'Seus eventos também são considerados produtos',
          'bar_produtos_4':'Escolha atrações que tocaram no seu evento',
          'bar_produtos_5':'Publique seu evento em sua conta do Instagram diretamente pelo noButeco',
          'bar_perfil_1':'Adicione informações sobre a sua empresa',
          'bar_perfil_2':'Informe horário de funcionamento',
          'bar_perfil_3':'Habilite a opção de receber reservas e o horário que ela é permitida',
          'bar_assinatura_1':'Assine a versão premium e tenha vantagens',
          'bar_login_1':'Use o login de test email: c@hotmail.com  senha: 123456',
          'bar_login_2':'Crie uma nova conta rapidamente',
          'bar_login_3':'Altera a senha caso tenha esquido-a',
          'bar_qr_1':'',
          'bar_qr_2':'Crie QrCodes individuais(um mesa)',
          'bar_qr_3':'Deixe que seu cliente tenha um fácil acesso ao seu menu',
          'bar_garcom_1':'Cadastre seus garçons',
          'bar_garcom_2':'Habilite os garçons que podem alterar dados importantes',
          'bar_band_1':'Cadastre oportunidades de novas bandas tocarem em seu clube',
          'bar_band_2':'Entre em contato com bandas de sua região',
          'bar_band_3':'Veja as bandas que se interessaram pelo seu anúncio',
        },
      };
}


var _descriptionDe =
    'noButeco ist eine Komplettlösung, die Bars und Restaurants dabei unterstützt, ihren Betrieb effizient zu verwalten. Mit dieser Anwendung können Sie alles kontrollieren, vom Lagerbestand über die Verwaltung von Bestellungen und Reservierungen bis hin zu Ihrem Veranstaltungsplan.\n\nMit einer intuitiven und benutzerfreundlichen Oberfläche ermöglicht Ihnen die Anwendung, das Menü zu verwalten, Kosten und Verkäufe zu kontrollieren sowie einen Veranstaltungsplan (Musik- oder Sportattraktionen) zu organisieren. Es ist auch möglich, Tische und Reservierungen in Echtzeit zu verwalten, um eine Überfüllung des Lokals zu vermeiden.\n\nnoButeco bietet auch Funktionen zur Verbesserung des Kundenerlebnisses, wie z. B. die Möglichkeit, Bestellungen direkt über die Anwendung aufzugeben, und die Integration mit Lieferplattformen, um Kunden, die lieber zu Hause essen, mehr Komfort zu bieten.\n\nMit einer intuitiven und benutzerfreundlichen Oberfläche ist unsere App ein unverzichtbares Tool für diejenigen, die ihre Unternehmensführung verbessern, die Produktivität steigern und das Kundenerlebnis verbessern möchten.';
var _descriptionEn =
    'noButeco is a complete solution to help bars and restaurants manage their operations efficiently. With this application, you can control everything from stock to managing orders and reservations, as well as your event schedule.\n\nWith an intuitive and friendly interface, the application allows you to manage the menu, control costs and sales, in addition to organizing an event schedule (musical or sports attractions). It is also possible to manage tables and reservations in real time, to avoid overcrowding the establishment.\n\nnoButeco also offers functionalities to improve the customer experience, such as the option to place orders directly through the application and integration with delivery platforms, to offer more convenience to customers who prefer to eat at home.\n\nWith an intuitive and easy-to-use interface, our app is an indispensable tool for those looking to improve their business management, increase productivity and improve the customer experience.';
var _descriptionPt =
    ' O noButeco é uma solução completa para ajudar bares e restaurantess a administrar suas operações de maneira eficiente. Com este aplicativo, é possível controlar desde o estoque até a gestão de pedidos e reservas como tambem sua agenda de eventos.\n\nCom uma interface intuitiva e amigável, o aplicativo permite gerenciar o cardápio, controlar os custos e as vendas, além de organizar uma agenda de eventos (atracoes musicais ou esportivas). É possível ainda fazer o gerenciamento de mesas e reservas em tempo real, para evitar a superlotação do estabelecimento.\n\nO noButeco oferece também funcionalidades para melhorar a experiência do cliente, como a opção de realizar pedidos diretamente pelo aplicativo e a integração com plataformas de delivery, para oferecer mais comodidade aos clientes que preferem comer em casa.\n\nCom uma interface intuitiva e fácil de usar, faz com que nosso app seja uma ferramenta indispensável para aqueles que buscam aprimorar a gestão do seu negócio, aumentar a produtividade e melhorar a experiência do cliente.';
