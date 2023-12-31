/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 68 (34 per locale)
///
/// Built on 2023-07-10 at 09:53 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	id(languageCode: 'id', build: _StringsId.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String get fullName => 'Full name';
	String get email => 'Email';
	String get password => 'Password';
	String get confirmPassword => 'Confirm password';
	String get referralCode => 'Referral code';
	String get phoneNumber => 'Phone number';
	String get cancel => 'Cancel';
	String get confirm => 'Confirm';
	String get submit => 'Submit';
	late final _StringsMenuEn menu = _StringsMenuEn._(_root);
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
	late final _StringsErrorEn error = _StringsErrorEn._(_root);
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
	late final _StringsRegisterEn register = _StringsRegisterEn._(_root);
	late final _StringsFormValidationsEn formValidations = _StringsFormValidationsEn._(_root);
	late final _StringsSetupProfileEn setupProfile = _StringsSetupProfileEn._(_root);
}

// Path: menu
class _StringsMenuEn {
	_StringsMenuEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get settings => 'Settings';
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get yourAccount => 'Your account';
	String get editProfile => 'Edit profile';
	String get support => 'Support';
	String get logout => 'Logout';
}

// Path: error
class _StringsErrorEn {
	_StringsErrorEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get defaultMessage => 'Error occured';
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get messageTitle => 'Welcome back';
	String get messageDescription => 'Fill out information below in order to access your account.';
	String get button => 'Login';
	String get dontHaveAccount => 'Don\'t have an account?';
	String get createAccount => 'Create account';
}

// Path: register
class _StringsRegisterEn {
	_StringsRegisterEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get messageTitle => 'Create an account';
	String get messageDescription => 'Let\'s get started by filling out the form. You can ask referral from your referree.';
	String get button => 'Register';
	String get verifyEmailMessage => 'Email sent to your registered account.\nPlease verify to continue.';
}

// Path: formValidations
class _StringsFormValidationsEn {
	_StringsFormValidationsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String fieldParamNotValid({required Object label}) => '${label} is not valid';
	String get passwordMinLength => 'Minimum password length is 8';
	String get passwordContainSpaces => 'Password cannot contain spaces';
	String get confirmPasswordNotEqual => 'Password and confirm password are not equal';
	String get fieldCannotBeEmpty => 'Field cannot be empty';
	String fieldParamCannotBeEmpty({required Object label}) => '${label} cannot be empty';
}

// Path: setupProfile
class _StringsSetupProfileEn {
	_StringsSetupProfileEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Setup profile';
	String get referralNotFound => 'User with this referral code not found. Re-input or remove referral code to continue';
	String get referralInformation => 'Referral Information';
}

// Path: <root>
class _StringsId implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsId.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsId _root = this; // ignore: unused_field

	// Translations
	@override String get fullName => 'Nama lengkap';
	@override String get email => 'Email';
	@override String get password => 'Password';
	@override String get confirmPassword => 'Konfirmasi password';
	@override String get referralCode => 'Kode referral';
	@override String get phoneNumber => 'No telepon';
	@override String get cancel => 'Batal';
	@override String get confirm => 'Konfirmasi';
	@override String get submit => 'Simpan';
	@override late final _StringsMenuId menu = _StringsMenuId._(_root);
	@override late final _StringsSettingsId settings = _StringsSettingsId._(_root);
	@override late final _StringsErrorId error = _StringsErrorId._(_root);
	@override late final _StringsLoginId login = _StringsLoginId._(_root);
	@override late final _StringsRegisterId register = _StringsRegisterId._(_root);
	@override late final _StringsFormValidationsId formValidations = _StringsFormValidationsId._(_root);
	@override late final _StringsSetupProfileId setupProfile = _StringsSetupProfileId._(_root);
}

// Path: menu
class _StringsMenuId implements _StringsMenuEn {
	_StringsMenuId._(this._root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get settings => 'Pengaturan';
}

// Path: settings
class _StringsSettingsId implements _StringsSettingsEn {
	_StringsSettingsId._(this._root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get yourAccount => 'Akun kamu';
	@override String get editProfile => 'Ubah profil';
	@override String get support => 'Bantuan';
	@override String get logout => 'Keluar';
}

// Path: error
class _StringsErrorId implements _StringsErrorEn {
	_StringsErrorId._(this._root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get defaultMessage => 'Terjadi kesalahan';
}

// Path: login
class _StringsLoginId implements _StringsLoginEn {
	_StringsLoginId._(this._root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get messageTitle => 'Selamat datang';
	@override String get messageDescription => 'Isi data di bawah untuk mengakses akun Anda.';
	@override String get button => 'Masuk';
	@override String get dontHaveAccount => 'Belum punya akun?';
	@override String get createAccount => 'Buat akun';
}

// Path: register
class _StringsRegisterId implements _StringsRegisterEn {
	_StringsRegisterId._(this._root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get messageTitle => 'Buat akun';
	@override String get messageDescription => 'Mari mulai dengan mengisi data di bawah. Kamu dapat meminta kode referral dari orang yang mengundang kamu.';
	@override String get button => 'Daftar';
	@override String get verifyEmailMessage => 'Email telah dikirim ke emailmu.\nHarap verifikasi untuk melanjutkan';
}

// Path: formValidations
class _StringsFormValidationsId implements _StringsFormValidationsEn {
	_StringsFormValidationsId._(this._root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String fieldParamNotValid({required Object label}) => '${label} tidak valid';
	@override String get passwordMinLength => 'Minimal panjang password adalah 8';
	@override String get passwordContainSpaces => 'Password tidak boleh mengandung spasi';
	@override String get confirmPasswordNotEqual => 'Password dan konfirmasi password tidak sama';
	@override String get fieldCannotBeEmpty => 'Input tidak boleh kosong';
	@override String fieldParamCannotBeEmpty({required Object label}) => '${label} tidak boleh kosong';
}

// Path: setupProfile
class _StringsSetupProfileId implements _StringsSetupProfileEn {
	_StringsSetupProfileId._(this._root);

	@override final _StringsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setup profil';
	@override String get referralNotFound => 'User with this referral code not found. Re-input or remove referral code to continue';
	@override String get referralInformation => 'Referral Information';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'fullName': return 'Full name';
			case 'email': return 'Email';
			case 'password': return 'Password';
			case 'confirmPassword': return 'Confirm password';
			case 'referralCode': return 'Referral code';
			case 'phoneNumber': return 'Phone number';
			case 'cancel': return 'Cancel';
			case 'confirm': return 'Confirm';
			case 'submit': return 'Submit';
			case 'menu.home': return 'Home';
			case 'menu.settings': return 'Settings';
			case 'settings.yourAccount': return 'Your account';
			case 'settings.editProfile': return 'Edit profile';
			case 'settings.support': return 'Support';
			case 'settings.logout': return 'Logout';
			case 'error.defaultMessage': return 'Error occured';
			case 'login.messageTitle': return 'Welcome back';
			case 'login.messageDescription': return 'Fill out information below in order to access your account.';
			case 'login.button': return 'Login';
			case 'login.dontHaveAccount': return 'Don\'t have an account?';
			case 'login.createAccount': return 'Create account';
			case 'register.messageTitle': return 'Create an account';
			case 'register.messageDescription': return 'Let\'s get started by filling out the form. You can ask referral from your referree.';
			case 'register.button': return 'Register';
			case 'register.verifyEmailMessage': return 'Email sent to your registered account.\nPlease verify to continue.';
			case 'formValidations.fieldParamNotValid': return ({required Object label}) => '${label} is not valid';
			case 'formValidations.passwordMinLength': return 'Minimum password length is 8';
			case 'formValidations.passwordContainSpaces': return 'Password cannot contain spaces';
			case 'formValidations.confirmPasswordNotEqual': return 'Password and confirm password are not equal';
			case 'formValidations.fieldCannotBeEmpty': return 'Field cannot be empty';
			case 'formValidations.fieldParamCannotBeEmpty': return ({required Object label}) => '${label} cannot be empty';
			case 'setupProfile.title': return 'Setup profile';
			case 'setupProfile.referralNotFound': return 'User with this referral code not found. Re-input or remove referral code to continue';
			case 'setupProfile.referralInformation': return 'Referral Information';
			default: return null;
		}
	}
}

extension on _StringsId {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'fullName': return 'Nama lengkap';
			case 'email': return 'Email';
			case 'password': return 'Password';
			case 'confirmPassword': return 'Konfirmasi password';
			case 'referralCode': return 'Kode referral';
			case 'phoneNumber': return 'No telepon';
			case 'cancel': return 'Batal';
			case 'confirm': return 'Konfirmasi';
			case 'submit': return 'Simpan';
			case 'menu.home': return 'Home';
			case 'menu.settings': return 'Pengaturan';
			case 'settings.yourAccount': return 'Akun kamu';
			case 'settings.editProfile': return 'Ubah profil';
			case 'settings.support': return 'Bantuan';
			case 'settings.logout': return 'Keluar';
			case 'error.defaultMessage': return 'Terjadi kesalahan';
			case 'login.messageTitle': return 'Selamat datang';
			case 'login.messageDescription': return 'Isi data di bawah untuk mengakses akun Anda.';
			case 'login.button': return 'Masuk';
			case 'login.dontHaveAccount': return 'Belum punya akun?';
			case 'login.createAccount': return 'Buat akun';
			case 'register.messageTitle': return 'Buat akun';
			case 'register.messageDescription': return 'Mari mulai dengan mengisi data di bawah. Kamu dapat meminta kode referral dari orang yang mengundang kamu.';
			case 'register.button': return 'Daftar';
			case 'register.verifyEmailMessage': return 'Email telah dikirim ke emailmu.\nHarap verifikasi untuk melanjutkan';
			case 'formValidations.fieldParamNotValid': return ({required Object label}) => '${label} tidak valid';
			case 'formValidations.passwordMinLength': return 'Minimal panjang password adalah 8';
			case 'formValidations.passwordContainSpaces': return 'Password tidak boleh mengandung spasi';
			case 'formValidations.confirmPasswordNotEqual': return 'Password dan konfirmasi password tidak sama';
			case 'formValidations.fieldCannotBeEmpty': return 'Input tidak boleh kosong';
			case 'formValidations.fieldParamCannotBeEmpty': return ({required Object label}) => '${label} tidak boleh kosong';
			case 'setupProfile.title': return 'Setup profil';
			case 'setupProfile.referralNotFound': return 'User with this referral code not found. Re-input or remove referral code to continue';
			case 'setupProfile.referralInformation': return 'Referral Information';
			default: return null;
		}
	}
}
