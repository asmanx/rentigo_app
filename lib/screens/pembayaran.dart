import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  String selectedPayment = 'E-Wallet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF4FC),

      body: SafeArea(
        child: Column(
          children: [
            // HEADER
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Color(0xFF172033),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Pembayaran',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172033),
                    ),
                  ),
                ],
              ),
            ),

            // CONTENT
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // KARTU KENDARAAN
                    vehicleInfoCard(),

                    const SizedBox(height: 18),

                    // METODE PEMBAYARAN
                    const Text(
                      'Metode Pembayaran',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF172033),
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      'Pilih metode pembayaran yang kamu inginkan',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),

                    const SizedBox(height: 14),

                    paymentOption(
                      title: 'E-Wallet',
                      subtitle: 'DANA, OVO, GoPay, ShopeePay',
                      icon: Icons.account_balance_wallet_outlined,
                    ),

                    const SizedBox(height: 10),

                    paymentOption(
                      title: 'Transfer Bank',
                      subtitle: 'BCA, BRI, BNI, Mandiri & lainnya',
                      icon: Icons.account_balance_outlined,
                    ),

                    const SizedBox(height: 10),

                    paymentOption(
                      title: 'Kartu Debit / Kredit',
                      subtitle: 'Visa, Mastercard, JCB',
                      icon: Icons.credit_card_outlined,
                    ),

                    const SizedBox(height: 10),

                    paymentOption(
                      title: 'Cash On Delivery (COD)',
                      subtitle: 'Bayar saat menerima motor',
                      icon: Icons.local_shipping_outlined,
                    ),

                    const SizedBox(height: 12),

                    // RINCIAN PEMBAYARAN
                    paymentDetailCard(),

                    const SizedBox(height: 15),

                    // BAYAR SEKARANG
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Bayar Sekarang',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // KARTU INFORMASI KENDARAAN
  Widget vehicleInfoCard() {
    return Container(
      width: double.infinity,
      height: 126,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 108,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(
              'assets/images/Honda Scoopy.png',
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Honda Scoopy',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF172033),
                  ),
                ),

                const SizedBox(height: 3),

                const Text(
                  'Motor | 1 Hari (24 Jam)',
                  style: TextStyle(fontSize: 9, color: Color(0xFF172033)),
                ),

                const SizedBox(height: 5),

                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Rp150.000',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: '/hari',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 7),

                Container(
                  width: double.infinity,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.green.shade300),
                  ),
                  child: const Text(
                    'Available',
                    style: TextStyle(fontSize: 10, color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // METODE PEMBAYARAN
  Widget paymentOption({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    final bool isSelected = selectedPayment == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPayment = title;
        });
      },
      child: Container(
        width: double.infinity,
        height: 54,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: isSelected ? const Color(0xFFFFC800) : Colors.grey.shade300,
            width: isSelected ? 1.2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFFFFC800)
                    : const Color(0xFFE9EDF3),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(icon, color: const Color(0xFF172033), size: 21),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172033),
                    ),
                  ),

                  const SizedBox(height: 2),

                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 8,
                      color: Color(0xFF172033),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? const Color(0xFFFFC800) : Colors.white,
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFFFFC800)
                      : Colors.grey.shade300,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 14, color: Colors.white)
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  // RINCIAN PEMBAYARAN
  Widget paymentDetailCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rincian Pembayaran',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF172033),
            ),
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Harga Sewa',
                style: TextStyle(fontSize: 10, color: Color(0xFF172033)),
              ),
              Text(
                'Rp 150.000',
                style: TextStyle(fontSize: 10, color: Color(0xFF172033)),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Biaya Layanan',
                style: TextStyle(fontSize: 10, color: Color(0xFF172033)),
              ),
              Text(
                'Rp 5.000',
                style: TextStyle(fontSize: 10, color: Color(0xFF172033)),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Container(
            width: double.infinity,
            height: 42,
            padding: const EdgeInsets.symmetric(horizontal: 13),
            decoration: BoxDecoration(
              color: const Color(0xFF172033),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Pembayaran',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Rp 155.000',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
