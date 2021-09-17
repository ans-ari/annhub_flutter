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

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry.`
  String get lorem_ipsum {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      name: 'lorem_ipsum',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error has occurred!!! Please try again later`
  String get unexpected_error_occurred {
    return Intl.message(
      'Unexpected error has occurred!!! Please try again later',
      name: 'unexpected_error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Browser`
  String get browser {
    return Intl.message(
      'Browser',
      name: 'browser',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Receive`
  String get receive {
    return Intl.message(
      'Receive',
      name: 'receive',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buy {
    return Intl.message(
      'Buy',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Swap`
  String get swap {
    return Intl.message(
      'Swap',
      name: 'swap',
      desc: '',
      args: [],
    );
  }

  /// `Coins`
  String get coins {
    return Intl.message(
      'Coins',
      name: 'coins',
      desc: '',
      args: [],
    );
  }

  /// `Collectibles`
  String get collectibles {
    return Intl.message(
      'Collectibles',
      name: 'collectibles',
      desc: '',
      args: [],
    );
  }

  /// `No Coins found`
  String get no_wallet_coins {
    return Intl.message(
      'No Coins found',
      name: 'no_wallet_coins',
      desc: '',
      args: [],
    );
  }

  /// `Transfer coins from your InsiderCoins accounts`
  String get advice_transfer_coin {
    return Intl.message(
      'Transfer coins from your InsiderCoins accounts',
      name: 'advice_transfer_coin',
      desc: '',
      args: [],
    );
  }

  /// `No Collectibles Yet!`
  String get no_collectibles {
    return Intl.message(
      'No Collectibles Yet!',
      name: 'no_collectibles',
      desc: '',
      args: [],
    );
  }

  /// `Transactions History`
  String get transaction_history {
    return Intl.message(
      'Transactions History',
      name: 'transaction_history',
      desc: '',
      args: [],
    );
  }

  /// `Hash: `
  String get hash {
    return Intl.message(
      'Hash: ',
      name: 'hash',
      desc: '',
      args: [],
    );
  }

  /// `To : `
  String get to_address {
    return Intl.message(
      'To : ',
      name: 'to_address',
      desc: '',
      args: [],
    );
  }

  /// `From : `
  String get from_address {
    return Intl.message(
      'From : ',
      name: 'from_address',
      desc: '',
      args: [],
    );
  }

  /// `Access`
  String get access {
    return Intl.message(
      'Access',
      name: 'access',
      desc: '',
      args: [],
    );
  }

  /// `…`
  String get ellipsis {
    return Intl.message(
      '…',
      name: 'ellipsis',
      desc: '',
      args: [],
    );
  }

  /// `No Transaction History`
  String get no_transaction_history {
    return Intl.message(
      'No Transaction History',
      name: 'no_transaction_history',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `User not found. Please try again`
  String get user_not_found {
    return Intl.message(
      'User not found. Please try again',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `This account is not verified yet. Please check your email and try again.`
  String get account_not_verified {
    return Intl.message(
      'This account is not verified yet. Please check your email and try again.',
      name: 'account_not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email or password. Please try again!`
  String get incorrect_email_or_password {
    return Intl.message(
      'Incorrect email or password. Please try again!',
      name: 'incorrect_email_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Email already exists`
  String get email_already_exists {
    return Intl.message(
      'Email already exists',
      name: 'email_already_exists',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid. Please check again.`
  String get invalid_email {
    return Intl.message(
      'Email is invalid. Please check again.',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password not match`
  String get password_not_match {
    return Intl.message(
      'Password not match',
      name: 'password_not_match',
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
