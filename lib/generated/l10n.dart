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

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message(
      'My Profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Email`
  String get enter_email {
    return Intl.message(
      'Please Enter Email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Name`
  String get enter_name {
    return Intl.message(
      'Please Enter Name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Skills`
  String get enter_skills {
    return Intl.message(
      'Please Enter Skills',
      name: 'enter_skills',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Work Experience`
  String get enter_experience {
    return Intl.message(
      'Please Enter Work Experience',
      name: 'enter_experience',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Password`
  String get enter_pwd {
    return Intl.message(
      'Please Enter Password',
      name: 'enter_pwd',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Valid Password`
  String get enter_valid_password {
    return Intl.message(
      'Please Enter Valid Password',
      name: 'enter_valid_password',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Valid Email`
  String get enter_valid_email {
    return Intl.message(
      'Please Enter Valid Email',
      name: 'enter_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Email can't be empty`
  String get enter_empty_email_message {
    return Intl.message(
      'Email can\'t be empty',
      name: 'enter_empty_email_message',
      desc: '',
      args: [],
    );
  }

  /// `Password can't be empty`
  String get enter_empty_pwd_message {
    return Intl.message(
      'Password can\'t be empty',
      name: 'enter_empty_pwd_message',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 8 characters.`
  String get password_limitation_text {
    return Intl.message(
      'Password must contain at least 8 characters.',
      name: 'password_limitation_text',
      desc: '',
      args: [],
    );
  }

  /// `Including Upper/Lowercase , Numbers and Special Characters(Symbols)`
  String get password_content_validation_text {
    return Intl.message(
      'Including Upper/Lowercase , Numbers and Special Characters(Symbols)',
      name: 'password_content_validation_text',
      desc: '',
      args: [],
    );
  }

  /// `User does not exists`
  String get user_does_not_exist {
    return Intl.message(
      'User does not exists',
      name: 'user_does_not_exist',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out ?`
  String get logout_confirmation_message {
    return Intl.message(
      'Are you sure you want to log out ?',
      name: 'logout_confirmation_message',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
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

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
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
