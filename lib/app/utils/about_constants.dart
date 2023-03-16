import 'package:page/app/data/model/about.dart';

//url
var ilmenauUrl='asset/logo_ilmenau.png';
var ufrnUrl ='asset/logo_ufrn.png';

//Descrições
var descricaoMec = 'descricaoMec';
var descricaoCET = 'descricaoCet';
var descricaoComp = 'descricaoComp';
var descricaoExchange = 'descricaoExchange';

//Cursos
var mecanica = 'mecanica';
var cet = 'cet';
var computacao = 'computacao';
var exchange = 'exchange';

//Universidades
var ufrn = 'ufrn';
var ilmenau = 'ilmenau';

var mecanicaAbout = AboutMe(
    url: ufrnUrl,
    title: ufrn,
    subTitle: mecanica,
    startDate: DateTime(2017,1),
    finalDate: DateTime(2019,7));

var cetAbout = AboutMe(
    url: ufrnUrl,
    title: ufrn,
    subTitle: cet,
    startDate: DateTime(2012,1),
    finalDate: DateTime(2016,12));

var computacaoAbout = AboutMe(
    url: ufrnUrl,
    title: ufrn,
    subTitle: computacao,
    description: descricaoComp,
    startDate: DateTime(2020,8),
    finalDate: DateTime(2024,6));

var ilmenauAbout = AboutMe(
    url: ilmenauUrl,
    title: ilmenau,
    subTitle: exchange,
    startDate: DateTime(2015,1),
    finalDate: DateTime(2016,2));

var map = {
  ufrn:'Universidade Federal do Rio Grande do Norte',
  mecanica:'Bacharel em Engenharia Mecânica',
  cet:'Bacharel em Ciência e Tecnologia',
  computacao:'Bacharel em Engenharia da Computação',
  ilmenau:'Universidade Técnica de Ilmenau',
  exchange:'Programa de intercambio universitário',
  descricaoComp:'Introdução a Engenharia de Software'
};