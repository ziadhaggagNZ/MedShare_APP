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

  /// `Wlcome Back`
  String get WlcomeBackHomePage {
    return Intl.message(
      'Wlcome Back',
      name: 'WlcomeBackHomePage',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Setting {
    return Intl.message(
      'Settings',
      name: 'Setting',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get info {
    return Intl.message(
      'Info',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `Fill Profile`
  String get FillProfile {
    return Intl.message(
      'Fill Profile',
      name: 'FillProfile',
      desc: '',
      args: [],
    );
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

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get UserName {
    return Intl.message(
      'User Name',
      name: 'UserName',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get DateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'DateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `year/month/day`
  String get year_month_day {
    return Intl.message(
      'year/month/day',
      name: 'year_month_day',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get EnterEmail {
    return Intl.message(
      'Enter email',
      name: 'EnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get EnterYouurEmail {
    return Intl.message(
      'Enter your email',
      name: 'EnterYouurEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get CreateNewPassword {
    return Intl.message(
      'Create New Password',
      name: 'CreateNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create Your New Password`
  String get CreateYourNewPassword {
    return Intl.message(
      'Create Your New Password',
      name: 'CreateYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get PhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Upload id`
  String get UploadId {
    return Intl.message(
      'Upload id',
      name: 'UploadId',
      desc: '',
      args: [],
    );
  }

  /// `Add id`
  String get addId {
    return Intl.message(
      'Add id',
      name: 'addId',
      desc: '',
      args: [],
    );
  }

  /// `Add photo`
  String get addPhoto {
    return Intl.message(
      'Add photo',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `upload from camera`
  String get UploadPhotoFromCamera {
    return Intl.message(
      'upload from camera',
      name: 'UploadPhotoFromCamera',
      desc: '',
      args: [],
    );
  }

  /// `upload from gallery`
  String get UploadPhotoFromGallery {
    return Intl.message(
      'upload from gallery',
      name: 'UploadPhotoFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `show image`
  String get ShowImage {
    return Intl.message(
      'show image',
      name: 'ShowImage',
      desc: '',
      args: [],
    );
  }

  /// `not selected image`
  String get NotSelectedImage {
    return Intl.message(
      'not selected image',
      name: 'NotSelectedImage',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `CONTINUE`
  String get continue_botton {
    return Intl.message(
      'CONTINUE',
      name: 'continue_botton',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get MyProfile {
    return Intl.message(
      'My Profile',
      name: 'MyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Locations`
  String get locations {
    return Intl.message(
      'Locations',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `pop-up Notification`
  String get pop_up_Notification {
    return Intl.message(
      'pop-up Notification',
      name: 'pop_up_Notification',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get Others {
    return Intl.message(
      'Others',
      name: 'Others',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get AboutUs {
    return Intl.message(
      'About Us',
      name: 'AboutUs',
      desc: '',
      args: [],
    );
  }

  /// `terms and conditions`
  String get TermsAndConditions {
    return Intl.message(
      'terms and conditions',
      name: 'TermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get LogOut {
    return Intl.message(
      'Logout',
      name: 'LogOut',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create your`
  String get createyour {
    return Intl.message(
      'Create your',
      name: 'createyour',
      desc: '',
      args: [],
    );
  }

  /// `Sign In to Your`
  String get SignIntoYour {
    return Intl.message(
      'Sign In to Your',
      name: 'SignIntoYour',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get Account {
    return Intl.message(
      'Account',
      name: 'Account',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get signinsigninCabitl {
    return Intl.message(
      'SIGN IN',
      name: 'signinsigninCabitl',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signin {
    return Intl.message(
      'Sign In',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Forgot the pass?`
  String get forgotpass {
    return Intl.message(
      'Forgot the pass?',
      name: 'forgotpass',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotpassPage {
    return Intl.message(
      'Forgot Password',
      name: 'forgotpassPage',
      desc: '',
      args: [],
    );
  }

  /// `Code has been sent to`
  String get Codehasbeensentto {
    return Intl.message(
      'Code has been sent to',
      name: 'Codehasbeensentto',
      desc: '',
      args: [],
    );
  }

  /// `Didn't received code?`
  String get Didntreceivedcode {
    return Intl.message(
      'Didn\'t received code?',
      name: 'Didntreceivedcode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get Resend {
    return Intl.message(
      'Resend',
      name: 'Resend',
      desc: '',
      args: [],
    );
  }

  /// `VERFY`
  String get verfy {
    return Intl.message(
      'VERFY',
      name: 'verfy',
      desc: '',
      args: [],
    );
  }

  /// `     or continue with     `
  String get orcontinuewith {
    return Intl.message(
      '     or continue with     ',
      name: 'orcontinuewith',
      desc: '',
      args: [],
    );
  }

  /// `     or create with     `
  String get orcreatewith {
    return Intl.message(
      '     or create with     ',
      name: 'orcreatewith',
      desc: '',
      args: [],
    );
  }

  /// `are you sure you want to LogOut ?`
  String get AreYouSure {
    return Intl.message(
      'are you sure you want to LogOut ?',
      name: 'AreYouSure',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes, LogOut`
  String get YesLogout {
    return Intl.message(
      'Yes, LogOut',
      name: 'YesLogout',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get NoInternetConnection {
    return Intl.message(
      'No Internet Connection',
      name: 'NoInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Your internet connection is currently`
  String get YourInternetConnection {
    return Intl.message(
      'Your internet connection is currently',
      name: 'YourInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Not available please check or trt again`
  String get NotAvailable {
    return Intl.message(
      'Not available please check or trt again',
      name: 'NotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get Tryagain {
    return Intl.message(
      'Try again',
      name: 'Tryagain',
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
