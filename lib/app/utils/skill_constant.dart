import 'package:flutter/material.dart';
import 'package:portfolio/app/data/model/skill.dart';
import 'package:simple_icons/simple_icons.dart';

import '../modules/about_me/views/widgets/icon_skill.dart';

var fullStackSkill = Skill(title: 'Full Stack Development', descriptions: [
  'Building responsive website front end using Flutter Web',
  'Developing mobile applications using Flutter and solo android apps using Kotlin with Jetpack Compose',
  'Creating application backend in Node.js, Shelf & Dart',
], icons: [
  const SkillIcon(
    iconData: SimpleIcons.nodedotjs,
    color: Colors.green,
  ),
  const SkillIcon(
    iconData: SimpleIcons.firebase,
    color: Colors.amberAccent,
  ),
  const SkillIcon(
    iconData: SimpleIcons.flutter,
    color: Colors.blueAccent,
  ),
  const SkillIcon(
    iconData: SimpleIcons.kotlin,
    color: Colors.deepPurpleAccent,
  ),
]);

var desingSkill = Skill(title: 'Development and Management', descriptions: [
  'Version control tools allow you to track and manage changes to code with GitHub.',
  'Trello and JIRA keep the project organized, prioritize tasks and deliver on time and on budget.',
  'CI/CD with Codemagic automates building, testing and deploying software.',
], icons: [
  const SkillIcon(
    iconData: SimpleIcons.github,
  ),
  const SkillIcon(
    iconData: SimpleIcons.jira,
    color: Colors.blue,
  ),
  const SkillIcon(
    iconData: SimpleIcons.trello,
    color: Colors.blue,
  ),
  const SkillIcon(
    iconData: SimpleIcons.codemagic,
    color: Colors.redAccent,
  ),
]);

var devSkill = Skill(title: 'Test and Architecture', descriptions: [
  'Patterns like Clean architecture and mvvm are fundamental to keep the code readable, scalable and testable',
  'Unit and integration tests using JUnit, Mockito, and Espresso help to ensure software quality.',
], icons: [
  const SkillIcon(
    iconData: Icons.group,
  ),
  const SkillIcon(
    iconData: Icons.architecture_outlined,
    color: Colors.amber,
  ),
  const SkillIcon(
    iconData: SimpleIcons.junit5,
    color: Colors.blue,
  ),
]);
