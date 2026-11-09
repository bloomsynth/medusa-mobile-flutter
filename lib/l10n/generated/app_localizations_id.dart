// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get home => 'Beranda';

  @override
  String get categories => 'Kategori';

  @override
  String get collections => 'Koleksi';

  @override
  String get profile => 'Profil';

  @override
  String get topSelling => 'Penjualan Teratas';

  @override
  String get seeAll => 'Lihat Semua';

  @override
  String get latestProducts => 'Produk Terbaru';

  @override
  String get trendingProducts => 'Produk Tren';

  @override
  String get signIn => 'Masuk';

  @override
  String get signInToViewYourProfile =>
      'Masuk untuk melihat profil dan pesanan Anda';

  @override
  String get signingIn => 'Sedang masuk...';

  @override
  String get email => 'Email';

  @override
  String get enterYourEmail => 'Masukkan email Anda';

  @override
  String get password => 'Kata Sandi';

  @override
  String get enterYourPassword => 'Masukkan kata sandi Anda';

  @override
  String get dontHaveAnAccount => 'Belum punya akun? Daftar';

  @override
  String get invalidCredentials => 'Kredensial tidak valid. Silakan coba lagi.';

  @override
  String get noCollectionsFound => 'Tidak ada koleksi yang ditemukan';

  @override
  String get cart => 'Keranjang';

  @override
  String get checkout => 'Pembayaran';

  @override
  String get goHome => 'Kembali ke Beranda';

  @override
  String get youDontHaveAnythingInYourCart =>
      'Anda tidak memiliki apa pun di keranjang Anda.\nGunakan tautan di bawah ini untuk mulai menjelajahi produk kami.';

  @override
  String get profileInformation => 'Informasi Profil';

  @override
  String orderWithId(String id) {
    return 'Pesanan # $id';
  }

  @override
  String get orders => 'Pesanan';

  @override
  String get shippingAddresses => 'Alamat Pengiriman';

  @override
  String get logout => 'Keluar';

  @override
  String get profileDetails => 'Detail Profil';

  @override
  String get name => 'Nama';

  @override
  String get phone => 'Telepon';

  @override
  String get editProfile => 'Edit Profil';

  @override
  String get save => 'Simpan';

  @override
  String get cancel => 'Batal';

  @override
  String get firstName => 'Nama Depan';

  @override
  String get lastName => 'Nama Belakang';

  @override
  String get noOrdersFound => 'Tidak ada pesanan yang ditemukan';

  @override
  String get signInToViewOrders => 'Silakan masuk untuk melihat pesanan Anda';

  @override
  String get view => 'Lihat';

  @override
  String remainingItems(int count) {
    return '$count lagi';
  }

  @override
  String get noCategoriesFound => 'Tidak ada kategori yang ditemukan';

  @override
  String get variant => 'Varian';

  @override
  String get addAPromoCode => 'Tambahkan Kode Promo';

  @override
  String get enterPromoCode => 'Masukkan kode promo';

  @override
  String get appliedPromotions => 'Promosi yang Diterapkan';

  @override
  String get invalidPromoCode => 'Kode promo tidak valid';

  @override
  String get failedToApplyPromotion => 'Gagal menerapkan kode promo';

  @override
  String get failedToRemovePromotion => 'Gagal menghapus kode promo';

  @override
  String get apply => 'Terapkan';

  @override
  String get summary => 'Ringkasan';

  @override
  String get discount => 'Diskon';

  @override
  String get subtotal => 'Subtotal';

  @override
  String get shipping => 'Pengiriman';

  @override
  String get taxes => 'Pajak';

  @override
  String get total => 'Total';

  @override
  String get useSameAddressForBilling =>
      'Gunakan alamat yang sama untuk penagihan';

  @override
  String get shippingAddress => 'Alamat Pengiriman';

  @override
  String get billingAddress => 'Alamat Penagihan';

  @override
  String get address => 'Alamat';

  @override
  String get company => 'Perusahaan';

  @override
  String get optional => 'Opsional';

  @override
  String get postalCode => 'Kode Pos';

  @override
  String get city => 'Kota';

  @override
  String get provinceOrState => 'Provinsi';

  @override
  String get country => 'Negara';

  @override
  String get selectACountry => 'Pilih negara';

  @override
  String get delivery => 'Pengiriman';

  @override
  String get payment => 'Pembayaran';

  @override
  String get review => 'Tinjauan';

  @override
  String get continueToDelivery => 'Lanjutkan ke Pengiriman';

  @override
  String get continueToPayment => 'Lanjutkan ke Pembayaran';

  @override
  String get reviewOrder => 'Tinjau Pesanan';

  @override
  String payUsingProvider(String provider) {
    return 'Bayar menggunakan $provider';
  }

  @override
  String get placeOrder => 'Lakukan Pemesanan';

  @override
  String get continueLabel => 'Lanjutkan';

  @override
  String get pleaseSelectAPaymentMethod => 'Silakan pilih penyedia pembayaran';

  @override
  String get noCartFound => 'Keranjang tidak ditemukan';

  @override
  String get paymentProviderNotSupported =>
      'Penyedia pembayaran tidak didukung';

  @override
  String get failedToCompleteOrder => 'Gagal menyelesaikan pesanan';

  @override
  String get error => 'Kesalahan';

  @override
  String get anErrorOccurred => 'Terjadi kesalahan';

  @override
  String get noCartId => 'ID Keranjang tidak ada';

  @override
  String get failedToUpdateShippingMethod =>
      'Gagal memperbarui metode pengiriman';

  @override
  String get loadingShippingOptions => 'Memuat opsi pengiriman';

  @override
  String get selectShippingMethod => 'Pilih Metode Pengiriman';

  @override
  String get calculating => 'Menghitung';

  @override
  String get noRegionId => 'ID wilayah tidak ada';

  @override
  String get stripePaymentInfo =>
      'Anda akan memasukkan detail kartu dengan aman melalui Stripe saat membayar.';

  @override
  String get stripeNotConfigured =>
      'Pembayaran kartu belum disiapkan di aplikasi ini. Pilih metode pembayaran lain.';

  @override
  String get paymentNotReady =>
      'Pembayaran tidak dapat dimulai. Kembali ke Pembayaran dan coba lagi.';

  @override
  String get noAdditionalActionsRequiredForManualPayment =>
      'Tidak ada tindakan tambahan yang diperlukan untuk pembayaran manual.';

  @override
  String paymentProviderIsInDevelopment(String provider) {
    return 'Penyedia pembayaran $provider sedang dalam pengembangan.';
  }

  @override
  String get loadingPaymentOptions => 'Memuat opsi pembayaran';

  @override
  String get selectPaymentMethod => 'Pilih Metode Pembayaran';

  @override
  String get qty => 'Jml';

  @override
  String get shippingMethod => 'Metode Pengiriman';

  @override
  String get paymentMethod => 'Metode Pembayaran';

  @override
  String get noShippingMethodSelected =>
      'Tidak ada metode pengiriman yang dipilih';

  @override
  String get noPaymentMethodSelected =>
      'Tidak ada metode pembayaran yang dipilih';

  @override
  String get canceled => 'Dibatalkan';

  @override
  String get notFulfilled => 'Belum Dipenuhi';

  @override
  String get partiallyFulfilled => 'Sebagian Dipenuhi';

  @override
  String get fulfilled => 'Dipenuhi';

  @override
  String get partiallyShipped => 'Sebagian Dikirim';

  @override
  String get shipped => 'Dikirim';

  @override
  String get partiallyDelivered => 'Sebagian Diterima';

  @override
  String get delivered => 'Diterima';

  @override
  String countItems(int count) {
    return '$count item';
  }

  @override
  String get orderDetails => 'Detail Pesanan';

  @override
  String get orderNotFound => 'Pesanan tidak ditemukan';

  @override
  String placedOn(String datetime) {
    return 'Dipesan pada $datetime';
  }

  @override
  String get status => 'Status';

  @override
  String get orderItems => 'Item Pesanan';

  @override
  String get contact => 'Kontak';

  @override
  String get method => 'Metode';

  @override
  String get orderSummary => 'Ringkasan Pesanan';

  @override
  String get continueShopping => 'Lanjutkan Belanja';

  @override
  String get addresses => 'Alamat';

  @override
  String get pleaseSignInToViewYourAddress =>
      'Silakan masuk untuk melihat alamat Anda';

  @override
  String get noAddressesFound => 'Tidak ada alamat yang ditemukan';

  @override
  String get addNewAddress => 'Tambahkan Alamat Baru';

  @override
  String get addAddress => 'Tambahkan Alamat';

  @override
  String get editAddress => 'Edit Alamat';

  @override
  String get saveChanges => 'Simpan Perubahan';

  @override
  String get countryCode => 'Kode Negara';

  @override
  String get productInformation => 'Informasi Produk';

  @override
  String get material => 'Bahan';

  @override
  String get countryOfOrigin => 'Negara Asal';

  @override
  String get type => 'Tipe';

  @override
  String get weight => 'Berat';

  @override
  String get dimensions => 'Dimensi';

  @override
  String daysReturn(int count) {
    return 'Pengembalian dalam $count hari';
  }

  @override
  String get fastDelivery => 'Pengiriman Cepat';

  @override
  String get addToCart => 'Tambahkan ke keranjang';

  @override
  String get outOfStock => 'Stok habis';

  @override
  String get viewCart => 'Lihat keranjang';

  @override
  String get settings => 'Pengaturan';

  @override
  String get language => 'Bahasa';

  @override
  String get selectLanguage => 'Pilih bahasa';

  @override
  String get languageIsRequired => 'Bahasa wajib diisi';

  @override
  String get firstNameIsRequired => 'Nama depan wajib diisi';

  @override
  String get lastNameIsRequired => 'Nama belakang wajib diisi';

  @override
  String get addressIsRequired => 'Alamat wajib diisi';

  @override
  String get postalCodeIsRequired => 'Kode pos wajib diisi';

  @override
  String get cityIsRequired => 'Kota wajib diisi';

  @override
  String get countryIsRequired => 'Negara wajib diisi';

  @override
  String get phoneIsRequired => 'Nomor telepon wajib diisi';

  @override
  String get pleaseEnterAValidEmail => 'Silakan masukkan email yang valid';

  @override
  String get invalidEmailAddress => 'Alamat email tidak valid';

  @override
  String passwordMustBeAtLeastNCharacters(int n) {
    return 'Kata sandi harus terdiri dari setidaknya $n karakter';
  }

  @override
  String get register => 'Daftar';

  @override
  String get enterYourFirstName => 'Masukkan nama depan Anda';

  @override
  String get enterYourLastName => 'Masukkan nama belakang Anda';

  @override
  String get createAccount => 'Buat Akun';

  @override
  String get creatingAccount => 'Sedang membuat akun';

  @override
  String get alreadyHaveAnAccount => 'Sudah memiliki akun? Masuk';

  @override
  String get registrationFailed => 'Pendaftaran gagal. Silakan coba lagi.';

  @override
  String get search => 'Cari';

  @override
  String get searchProducts => 'Cari produk';

  @override
  String get searchPrompt => 'Ketik nama produk untuk mulai mencari';

  @override
  String get relatedProducts => 'Anda Mungkin Juga Suka';

  @override
  String noProductsFoundFor(String query) {
    return 'Tidak ada produk yang ditemukan untuk \"$query\"';
  }

  @override
  String get selectRegion => 'Pilih Wilayah';

  @override
  String selectOption(String option) {
    return 'Pilih $option';
  }

  @override
  String get original => 'Asli';

  @override
  String get retry => 'Coba lagi';

  @override
  String get switchTheme => 'Ganti tema';
}
