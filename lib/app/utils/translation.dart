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
          'from':'From',
          'to':'To',
          'skill': 'Skill',
          'education': 'Education',
          'work': 'Work Experience',
          'about_me_text': 'I am a software developer passionate about technology, curious to explore new possibilities and enthusiastic to create innovative solutions that solve real-world problems. I am constantly learning and pushing myself to improve my skills and stay up-to-date with the latest trends in mobile development. Outside of work, I enjoy reading about tech and traveling to new places to experience different cultures and traditions.',
          'hi_all':'Hii all,\nI am Allysson!',
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
          'access_my_kotlin': 'Greifen Sie über GitHub auf meine Kotlin-Anwendungen zu',
          "ufrn": "Universität von Rio Grande do Norte",
          "mecanica": "Bachelor-Abschluss in Maschinenbau",
          "cet": "Bachelor-Abschluss in Wissenschaft und Technologie",
          "computacao": "Bachelor-Abschluss in Computer Engineering",
          "ilmenau": "Technische Universität Ilmenau",
          "exchange": "Universitätsaustauschprogramm in Ingenieurwissenschaften",
          "descricaoComp": "Einführung in die Software-Entwicklung",
          'from': 'Von',
          'to': 'Zu',
          'skill': 'Fähigkeit',
          'education': 'Bildung',
          'work': 'Arbeitserfahrung',
          'about_me_text': 'Ich bin ein Software-Entwickler, der von Begeisterung für Technologie, Neugier auf neue Möglichkeiten und Enthusiasmus für die Schaffung innovativer Lösungen, die reale Probleme lösen, angetrieben wird. Ich lerne ständig dazu und fordere mich selbst heraus, um meine Fähigkeiten zu verbessern und auf dem neuesten Stand der neuesten Trends in der Mobile Entwicklung. Außerhalb der Arbeit lese ich gerne über Technologie und reise gerne an neue Orte, um verschiedene Kulturen und Traditionen zu erleben.',
          'hi_all':'Hallo zusammer,\nIcb bin Allysson!'
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
          'about_me_text': 'Expeciência de Trabalho',
          'hi_all': 'Olá pessoal,\nEu sou o Allysson!',
        },
      };
}
