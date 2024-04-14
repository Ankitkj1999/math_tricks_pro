// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello, World!`
  String get helloWorld {
    return Intl.message(
      'Hello, World!',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the App.`
  String get greeting {
    return Intl.message(
      'Welcome to the App.',
      name: 'greeting',
      desc: '',
      args: [],
    );
  }

  /// `Click me!`
  String get buttonText {
    return Intl.message(
      'Click me!',
      name: 'buttonText',
      desc: '',
      args: [],
    );
  }

  /// `Like Maths Tricks`
  String get likeMathTricks {
    return Intl.message(
      'Like Maths Tricks',
      name: 'likeMathTricks',
      desc: '',
      args: [],
    );
  }

  /// `Learn Basic Math: Arithmetic Operations`
  String get learnBasicMathArithmeticOperations {
    return Intl.message(
      'Learn Basic Math: Arithmetic Operations',
      name: 'learnBasicMathArithmeticOperations',
      desc: '',
      args: [],
    );
  }

  /// `Level`
  String get level {
    return Intl.message(
      'Level',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `Game Over!`
  String get gameOver {
    return Intl.message(
      'Game Over!',
      name: 'gameOver',
      desc: '',
      args: [],
    );
  }

  /// `Total Level`
  String get totalLevel {
    return Intl.message(
      'Total Level',
      name: 'totalLevel',
      desc: '',
      args: [],
    );
  }

  /// `Total Questions`
  String get totalQuestions {
    return Intl.message(
      'Total Questions',
      name: 'totalQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Get 1 lives for continue game.`
  String get get1LivesForContinueGame {
    return Intl.message(
      'Get 1 lives for continue game.',
      name: 'get1LivesForContinueGame',
      desc: '',
      args: [],
    );
  }

  /// `Show Video`
  String get showVideo {
    return Intl.message(
      'Show Video',
      name: 'showVideo',
      desc: '',
      args: [],
    );
  }

  /// `Game Over`
  String get gameOverAgain {
    return Intl.message(
      'Game Over',
      name: 'gameOverAgain',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get score {
    return Intl.message(
      'Score',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `Best Score`
  String get bestScore {
    return Intl.message(
      'Best Score',
      name: 'bestScore',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Go`
  String get go {
    return Intl.message(
      'Go',
      name: 'go',
      desc: '',
      args: [],
    );
  }

  /// `Quit !`
  String get quit {
    return Intl.message(
      'Quit !',
      name: 'quit',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit?`
  String get areYouSureYouWantToQuit {
    return Intl.message(
      'Are you sure you want to quit?',
      name: 'areYouSureYouWantToQuit',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Use 10 coins`
  String get use10Coins {
    return Intl.message(
      'Use 10 coins',
      name: 'use10Coins',
      desc: '',
      args: [],
    );
  }

  /// `Hint`
  String get hint {
    return Intl.message(
      'Hint',
      name: 'hint',
      desc: '',
      args: [],
    );
  }

  /// `Solution`
  String get Solution {
    return Intl.message(
      'Solution',
      name: 'Solution',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Sound`
  String get sound {
    return Intl.message(
      'Sound',
      name: 'sound',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get Ok {
    return Intl.message(
      'Ok',
      name: 'Ok',
      desc: '',
      args: [],
    );
  }

  /// `Vibration`
  String get vibration {
    return Intl.message(
      'Vibration',
      name: 'vibration',
      desc: '',
      args: [],
    );
  }

  /// `Night Mode`
  String get nightMode {
    return Intl.message(
      'Night Mode',
      name: 'nightMode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Reminder`
  String get reminder {
    return Intl.message(
      'Reminder',
      name: 'reminder',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Rate us`
  String get rateUs {
    return Intl.message(
      'Rate us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `Give Your Opinion`
  String get giveYourOpinion {
    return Intl.message(
      'Give Your Opinion',
      name: 'giveYourOpinion',
      desc: '',
      args: [],
    );
  }

  /// `Make better math goal for you, and would love to know how would you rate our app?`
  String get makeBetterMathGoal {
    return Intl.message(
      'Make better math goal for you, and would love to know how would you rate our app?',
      name: 'makeBetterMathGoal',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Give Feedback`
  String get giveFeedback {
    return Intl.message(
      'Give Feedback',
      name: 'giveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Give your feedback about our app`
  String get giveYourFeedback {
    return Intl.message(
      'Give your feedback about our app',
      name: 'giveYourFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Are you satisfied with this app?`
  String get areYouSatisfied {
    return Intl.message(
      'Are you satisfied with this app?',
      name: 'areYouSatisfied',
      desc: '',
      args: [],
    );
  }

  /// `Tell us what can be improved?`
  String get tellUsImprovements {
    return Intl.message(
      'Tell us what can be improved?',
      name: 'tellUsImprovements',
      desc: '',
      args: [],
    );
  }

  /// `Write your feedback...`
  String get writeYourFeedback {
    return Intl.message(
      'Write your feedback...',
      name: 'writeYourFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Submit Feedback`
  String get submitFeedback {
    return Intl.message(
      'Submit Feedback',
      name: 'submitFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Contact Developer`
  String get contactDeveloper {
    return Intl.message(
      'Contact Developer',
      name: 'contactDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Addition`
  String get addition {
    return Intl.message(
      'Addition',
      name: 'addition',
      desc: '',
      args: [],
    );
  }

  /// `Adding Numbers Close to Hundreds`
  String get addingNumbersCloseToHundreds {
    return Intl.message(
      'Adding Numbers Close to Hundreds',
      name: 'addingNumbersCloseToHundreds',
      desc: '',
      args: [],
    );
  }

  /// `Subtraction`
  String get subtraction {
    return Intl.message(
      'Subtraction',
      name: 'subtraction',
      desc: '',
      args: [],
    );
  }

  /// `Subtracting from 1000`
  String get subtractingFrom1000 {
    return Intl.message(
      'Subtracting from 1000',
      name: 'subtractingFrom1000',
      desc: '',
      args: [],
    );
  }

  /// `Subtracting Numbers Close to Hundreds`
  String get subtractingNumbersCloseToHundreds {
    return Intl.message(
      'Subtracting Numbers Close to Hundreds',
      name: 'subtractingNumbersCloseToHundreds',
      desc: '',
      args: [],
    );
  }

  /// `Multiplication`
  String get multiplication {
    return Intl.message(
      'Multiplication',
      name: 'multiplication',
      desc: '',
      args: [],
    );
  }

  /// `Multiplication Table`
  String get multiplicationTable {
    return Intl.message(
      'Multiplication Table',
      name: 'multiplicationTable',
      desc: '',
      args: [],
    );
  }

  /// `Multiply two digit number by 11`
  String get multiplyTwoDigitNumberBy11 {
    return Intl.message(
      'Multiply two digit number by 11',
      name: 'multiplyTwoDigitNumberBy11',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 5`
  String get multiplyBy5 {
    return Intl.message(
      'Multiply by 5',
      name: 'multiplyBy5',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 9`
  String get multiplyBy9 {
    return Intl.message(
      'Multiply by 9',
      name: 'multiplyBy9',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 4`
  String get multiplyBy4 {
    return Intl.message(
      'Multiply by 4',
      name: 'multiplyBy4',
      desc: '',
      args: [],
    );
  }

  /// `Tough multiplication`
  String get toughMultiplication {
    return Intl.message(
      'Tough multiplication',
      name: 'toughMultiplication',
      desc: '',
      args: [],
    );
  }

  /// `Multiply numbers between 11 and 19`
  String get multiplyNumbersBetween11And19 {
    return Intl.message(
      'Multiply numbers between 11 and 19',
      name: 'multiplyNumbersBetween11And19',
      desc: '',
      args: [],
    );
  }

  /// `Multiply two digit numbers having same tens digit and ones digits' sum is 10`
  String get multiplyTwoDigitNumbersWithSameTensDigitAndOnesDigitsSumIs10 {
    return Intl.message(
      'Multiply two digit numbers having same tens digit and ones digits\' sum is 10',
      name: 'multiplyTwoDigitNumbersWithSameTensDigitAndOnesDigitsSumIs10',
      desc: '',
      args: [],
    );
  }

  /// `Multiply two digit numbers ending in 1`
  String get multiplyTwoDigitNumbersEndingIn1 {
    return Intl.message(
      'Multiply two digit numbers ending in 1',
      name: 'multiplyTwoDigitNumbersEndingIn1',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 15`
  String get multiplyBy15 {
    return Intl.message(
      'Multiply by 15',
      name: 'multiplyBy15',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 20`
  String get multiplyBy20 {
    return Intl.message(
      'Multiply by 20',
      name: 'multiplyBy20',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 99`
  String get multiplyBy99 {
    return Intl.message(
      'Multiply by 99',
      name: 'multiplyBy99',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 25`
  String get multiplyBy25 {
    return Intl.message(
      'Multiply by 25',
      name: 'multiplyBy25',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 50`
  String get multiplyBy50 {
    return Intl.message(
      'Multiply by 50',
      name: 'multiplyBy50',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 0.5`
  String get multiplyByPoint5 {
    return Intl.message(
      'Multiply by 0.5',
      name: 'multiplyByPoint5',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 0.2`
  String get multiplyByPoint2 {
    return Intl.message(
      'Multiply by 0.2',
      name: 'multiplyByPoint2',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 0.25`
  String get multiplyByPoint25 {
    return Intl.message(
      'Multiply by 0.25',
      name: 'multiplyByPoint25',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 3`
  String get multiplyBy3 {
    return Intl.message(
      'Multiply by 3',
      name: 'multiplyBy3',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 6`
  String get multiplyBy6 {
    return Intl.message(
      'Multiply by 6',
      name: 'multiplyBy6',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 7`
  String get multiplyBy7 {
    return Intl.message(
      'Multiply by 7',
      name: 'multiplyBy7',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 8`
  String get multiplyBy8 {
    return Intl.message(
      'Multiply by 8',
      name: 'multiplyBy8',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 12`
  String get multiplyBy12 {
    return Intl.message(
      'Multiply by 12',
      name: 'multiplyBy12',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 14`
  String get multiplyBy14 {
    return Intl.message(
      'Multiply by 14',
      name: 'multiplyBy14',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 16`
  String get multiplyBy16 {
    return Intl.message(
      'Multiply by 16',
      name: 'multiplyBy16',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 17`
  String get multiplyBy17 {
    return Intl.message(
      'Multiply by 17',
      name: 'multiplyBy17',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 18`
  String get multiplyBy18 {
    return Intl.message(
      'Multiply by 18',
      name: 'multiplyBy18',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 19`
  String get multiplyBy19 {
    return Intl.message(
      'Multiply by 19',
      name: 'multiplyBy19',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 2`
  String get multiplyBy2 {
    return Intl.message(
      'Multiply by 2',
      name: 'multiplyBy2',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 125`
  String get multiplyBy125 {
    return Intl.message(
      'Multiply by 125',
      name: 'multiplyBy125',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 250`
  String get multiplyBy250 {
    return Intl.message(
      'Multiply by 250',
      name: 'multiplyBy250',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 500`
  String get multiplyBy500 {
    return Intl.message(
      'Multiply by 500',
      name: 'multiplyBy500',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 750`
  String get multiplyBy750 {
    return Intl.message(
      'Multiply by 750',
      name: 'multiplyBy750',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 999`
  String get multiplyBy999 {
    return Intl.message(
      'Multiply by 999',
      name: 'multiplyBy999',
      desc: '',
      args: [],
    );
  }

  /// `Multiply by 75`
  String get multiplyBy75 {
    return Intl.message(
      'Multiply by 75',
      name: 'multiplyBy75',
      desc: '',
      args: [],
    );
  }

  /// `Division`
  String get division {
    return Intl.message(
      'Division',
      name: 'division',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 0.2`
  String get divideByPoint2 {
    return Intl.message(
      'Divide by 0.2',
      name: 'divideByPoint2',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 0.25`
  String get divideByPoint25 {
    return Intl.message(
      'Divide by 0.25',
      name: 'divideByPoint25',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 0.5`
  String get divideByPoint5 {
    return Intl.message(
      'Divide by 0.5',
      name: 'divideByPoint5',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 2`
  String get divideBy2 {
    return Intl.message(
      'Divide by 2',
      name: 'divideBy2',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 3`
  String get divideBy3 {
    return Intl.message(
      'Divide by 3',
      name: 'divideBy3',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 4`
  String get divideBy4 {
    return Intl.message(
      'Divide by 4',
      name: 'divideBy4',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 5`
  String get divideBy5 {
    return Intl.message(
      'Divide by 5',
      name: 'divideBy5',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 6`
  String get divideBy6 {
    return Intl.message(
      'Divide by 6',
      name: 'divideBy6',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 7`
  String get divideBy7 {
    return Intl.message(
      'Divide by 7',
      name: 'divideBy7',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 8`
  String get divideBy8 {
    return Intl.message(
      'Divide by 8',
      name: 'divideBy8',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 9`
  String get divideBy9 {
    return Intl.message(
      'Divide by 9',
      name: 'divideBy9',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 15`
  String get divideBy15 {
    return Intl.message(
      'Divide by 15',
      name: 'divideBy15',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 20`
  String get divideBy20 {
    return Intl.message(
      'Divide by 20',
      name: 'divideBy20',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 25`
  String get divideBy25 {
    return Intl.message(
      'Divide by 25',
      name: 'divideBy25',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 40`
  String get divideBy40 {
    return Intl.message(
      'Divide by 40',
      name: 'divideBy40',
      desc: '',
      args: [],
    );
  }

  /// `Divide by 50`
  String get divideBy50 {
    return Intl.message(
      'Divide by 50',
      name: 'divideBy50',
      desc: '',
      args: [],
    );
  }

  /// `Square`
  String get square {
    return Intl.message(
      'Square',
      name: 'square',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 10 and 19`
  String get squareNumbersBetween10And19 {
    return Intl.message(
      'Square numbers between 10 and 19',
      name: 'squareNumbersBetween10And19',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 20 and 29`
  String get squareNumbersBetween20And29 {
    return Intl.message(
      'Square numbers between 20 and 29',
      name: 'squareNumbersBetween20And29',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 30 and 39`
  String get squareNumbersBetween30And39 {
    return Intl.message(
      'Square numbers between 30 and 39',
      name: 'squareNumbersBetween30And39',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 40 and 49`
  String get squareNumbersBetween40And49 {
    return Intl.message(
      'Square numbers between 40 and 49',
      name: 'squareNumbersBetween40And49',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 50 and 59`
  String get squareNumbersBetween50And59 {
    return Intl.message(
      'Square numbers between 50 and 59',
      name: 'squareNumbersBetween50And59',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 60 and 69`
  String get squareNumbersBetween60And69 {
    return Intl.message(
      'Square numbers between 60 and 69',
      name: 'squareNumbersBetween60And69',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 70 and 79`
  String get squareNumbersBetween70And79 {
    return Intl.message(
      'Square numbers between 70 and 79',
      name: 'squareNumbersBetween70And79',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 80 and 89`
  String get squareNumbersBetween80And89 {
    return Intl.message(
      'Square numbers between 80 and 89',
      name: 'squareNumbersBetween80And89',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 90 and 99`
  String get squareNumbersBetween90And99 {
    return Intl.message(
      'Square numbers between 90 and 99',
      name: 'squareNumbersBetween90And99',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers between 100 and 109`
  String get squareNumbersBetween100And109 {
    return Intl.message(
      'Square numbers between 100 and 109',
      name: 'squareNumbersBetween100And109',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers ending in 5`
  String get squareNumbersEndingIn5 {
    return Intl.message(
      'Square numbers ending in 5',
      name: 'squareNumbersEndingIn5',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers ending in 05`
  String get squareNumbersEndingIn05 {
    return Intl.message(
      'Square numbers ending in 05',
      name: 'squareNumbersEndingIn05',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers ending in 15`
  String get squareNumbersEndingIn15 {
    return Intl.message(
      'Square numbers ending in 15',
      name: 'squareNumbersEndingIn15',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers ending in 25`
  String get squareNumbersEndingIn25 {
    return Intl.message(
      'Square numbers ending in 25',
      name: 'squareNumbersEndingIn25',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers ending in 75`
  String get squareNumbersEndingIn75 {
    return Intl.message(
      'Square numbers ending in 75',
      name: 'squareNumbersEndingIn75',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers ending in 95`
  String get squareNumbersEndingIn95 {
    return Intl.message(
      'Square numbers ending in 95',
      name: 'squareNumbersEndingIn95',
      desc: '',
      args: [],
    );
  }

  /// `Square numbers ending in 125`
  String get squareNumbersEndingIn125 {
    return Intl.message(
      'Square numbers ending in 125',
      name: 'squareNumbersEndingIn125',
      desc: '',
      args: [],
    );
  }

  /// `Exponential`
  String get exponential {
    return Intl.message(
      'Exponential',
      name: 'exponential',
      desc: '',
      args: [],
    );
  }

  /// `2ⁿ`
  String get aPowerN {
    return Intl.message(
      '2ⁿ',
      name: 'aPowerN',
      desc: '',
      args: [],
    );
  }

  /// `a²\na = 10 ~ 99`
  String get aSquared10to99 {
    return Intl.message(
      'a²\na = 10 ~ 99',
      name: 'aSquared10to99',
      desc: '',
      args: [],
    );
  }

  /// `a²\na = 100 ~ 999`
  String get aSquared100to999 {
    return Intl.message(
      'a²\na = 100 ~ 999',
      name: 'aSquared100to999',
      desc: '',
      args: [],
    );
  }

  /// `a²\na = 1000 ~ 9999`
  String get aSquared1000to9999 {
    return Intl.message(
      'a²\na = 1000 ~ 9999',
      name: 'aSquared1000to9999',
      desc: '',
      args: [],
    );
  }

  /// `a³\na = 10 ~ 99`
  String get aCubed10to99 {
    return Intl.message(
      'a³\na = 10 ~ 99',
      name: 'aCubed10to99',
      desc: '',
      args: [],
    );
  }

  /// `a³\na = 100 ~ 999`
  String get aCubed100to999 {
    return Intl.message(
      'a³\na = 100 ~ 999',
      name: 'aCubed100to999',
      desc: '',
      args: [],
    );
  }

  /// `a⁴\na = 1 ~ 99`
  String get aToThePowerOf4 {
    return Intl.message(
      'a⁴\na = 1 ~ 99',
      name: 'aToThePowerOf4',
      desc: '',
      args: [],
    );
  }

  /// `a⁶\na = 1 ~ 99`
  String get aToThePowerOf6 {
    return Intl.message(
      'a⁶\na = 1 ~ 99',
      name: 'aToThePowerOf6',
      desc: '',
      args: [],
    );
  }

  /// `a⁹\na = 1 ~ 99`
  String get aToThePowerOf9 {
    return Intl.message(
      'a⁹\na = 1 ~ 99',
      name: 'aToThePowerOf9',
      desc: '',
      args: [],
    );
  }

  /// `Nth Root`
  String get nthRoot {
    return Intl.message(
      'Nth Root',
      name: 'nthRoot',
      desc: '',
      args: [],
    );
  }

  /// `Percentage`
  String get percentage {
    return Intl.message(
      'Percentage',
      name: 'percentage',
      desc: '',
      args: [],
    );
  }

  /// `Percentage 1% to 100%\n1 to 300`
  String get percentage1to1001to300 {
    return Intl.message(
      'Percentage 1% to 100%\n1 to 300',
      name: 'percentage1to1001to300',
      desc: '',
      args: [],
    );
  }

  /// `Percentage 1% to 10%\n10X & 50X`
  String get percentage1to10_10X50X {
    return Intl.message(
      'Percentage 1% to 10%\n10X & 50X',
      name: 'percentage1to10_10X50X',
      desc: '',
      args: [],
    );
  }

  /// `Percentage: 50%\n1 to 100`
  String get percentage50_1to100 {
    return Intl.message(
      'Percentage: 50%\n1 to 100',
      name: 'percentage50_1to100',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
