// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "confirmation": MessageLookupByLibrary.simpleMessage("Confirmation"),
        "enter_email":
            MessageLookupByLibrary.simpleMessage("Please Enter Email"),
        "enter_empty_email_message":
            MessageLookupByLibrary.simpleMessage("Email can\'t be empty"),
        "enter_empty_pwd_message":
            MessageLookupByLibrary.simpleMessage("Password can\'t be empty"),
        "enter_experience": MessageLookupByLibrary.simpleMessage(
            "Please Enter Work Experience"),
        "enter_name": MessageLookupByLibrary.simpleMessage("Please Enter Name"),
        "enter_pwd":
            MessageLookupByLibrary.simpleMessage("Please Enter Password"),
        "enter_skills":
            MessageLookupByLibrary.simpleMessage("Please Enter Skills"),
        "enter_valid_email":
            MessageLookupByLibrary.simpleMessage("Please Enter Valid Email"),
        "enter_valid_password":
            MessageLookupByLibrary.simpleMessage("Please Enter Valid Password"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Log out"),
        "logout_confirmation_message": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out ?"),
        "my_profile": MessageLookupByLibrary.simpleMessage("My Profile"),
        "password_content_validation_text": MessageLookupByLibrary.simpleMessage(
            "Including Upper/Lowercase , Numbers and Special Characters(Symbols)"),
        "password_limitation_text": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least 8 characters."),
        "remember_me": MessageLookupByLibrary.simpleMessage("Remember me"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "user_does_not_exist":
            MessageLookupByLibrary.simpleMessage("User does not exists")
      };
}
