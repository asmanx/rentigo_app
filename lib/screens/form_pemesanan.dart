import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingFormScreen extends StatefulWidget {
  const BookingFormScreen({super.key});

  @override
  State<BookingFormScreen> createState() => _BookingFormScreenState();
}

class _BookingFormScreenState extends State<BookingFormScreen> {
  DateTime? rentalDate;
  DateTime? returnDate;

  String pickupMethod = 'pickup';

  final deliveryAddressController = TextEditingController();
  final additionalNotesController = TextEditingController();

  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();

  bool ktpUploaded = false;
  bool simUploaded = false;

  int get rentalDuration {
    if (rentalDate == null || returnDate == null) {
      return 0;
    }

    return returnDate!.difference(rentalDate!).inDays;
  }

  int get totalRentalPrice {
    return rentalDuration * 150000;
  }

  Future<void> selectDate({
    required bool isRentalDate,
  }) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: rentalDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Color(0xFFFACC15),
              onPrimary: Color(0xFF111827),
              surface: Color(0xFFFFFFFF),
              onSurface: Color(0xFF111827),
            ),
          ),
          child: child!,
        );
      },
    );

    if (selectedDate == null) return;

    setState(() {
      if (isRentalDate) {
        rentalDate = selectedDate;

        if (returnDate != null &&
            returnDate!.isBefore(selectedDate)) {
          returnDate = null;
        }
      } else {
        if (rentalDate != null &&
            selectedDate.isBefore(rentalDate!)) {
          return;
        }

        returnDate = selectedDate;
      }
    });
  }

  String formatDate(DateTime? date) {
    if (date == null) {
      return 'dd/mm/yyyy';
    }

    return '${date.day.toString().padLeft(2, '0')}/'
        '${date.month.toString().padLeft(2, '0')}/'
        '${date.year}';
  }

  @override
  void dispose() {
    deliveryAddressController.dispose();
    additionalNotesController.dispose();
    fullNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 375,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  20,
                  16,
                  20,
                  30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // HEADER
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          width: 56,
                          height: 56,
                          margin: const EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9FAFB),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: const Color(0xFFE5E7EB),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 22,
                              color: Color(0xFF111827),
                            ),
                          ),
                        ),

                        const SizedBox(width: 18),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Rent',
                                      style:
                                          GoogleFonts.plusJakartaSans(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(
                                          0xFFFACC15,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'igo',
                                      style:
                                          GoogleFonts.plusJakartaSans(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(
                                          0xFF111827,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 2),

                              // Judul halaman
                              Text(
                                'Booking Details',
                                style:
                                    GoogleFonts.plusJakartaSans(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF111827),
                                  height: 1.2,
                                ),
                              ),

                              const SizedBox(height: 1),

                              // Subtitle
                              Text(
                                'Complete your booking information',
                                style:
                                    GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF8C8C8C),
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 26),

                    const Divider(
                      color: Color(0xFFE5E7EB),
                      height: 1,
                    ),

                    const SizedBox(height: 30),

                    _vehicleCard(),

                    const SizedBox(height: 34),

                    _sectionTitle('1. Booking Details'),

                    const SizedBox(height: 18),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _dateField(
                            label: 'Rental Date',
                            value: formatDate(rentalDate),
                            onTap: () {
                              selectDate(
                                isRentalDate: true,
                              );
                            },
                          ),
                        ),

                        const SizedBox(width: 20),

                        Expanded(
                          child: _dateField(
                            label: 'Return Date',
                            value: formatDate(returnDate),
                            onTap: () {
                              selectDate(
                                isRentalDate: false,
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    _durationField(),

                    const SizedBox(height: 32),

                    _sectionTitle('2. Pickup Method'),

                    const SizedBox(height: 14),

                    _pickupCard(
                      title: 'Pick Up at Rental Location',
                      subtitle: 'Location: Surabaya',
                      value: 'pickup',
                    ),

                    const SizedBox(height: 10),

                    _pickupCard(
                      title: 'Delivery to Your Location',
                      subtitle:
                          'Available within Surabaya area only',
                      value: 'delivery',
                    ),

                    if (pickupMethod == 'delivery') ...[
                      const SizedBox(height: 14),

                      _textArea(
                        label: 'Delivery Address',
                        hint: 'Enter your delivery address',
                        controller: deliveryAddressController,
                      ),

                      const SizedBox(height: 12),

                      _textArea(
                        label: 'Additional Notes',
                        hint: 'Optional',
                        controller: additionalNotesController,
                      ),
                    ],

                    const SizedBox(height: 32),

                    // CUSTOMER INFORMATION
                    _sectionTitle('3. Customer Information'),

                    const SizedBox(height: 14),

                    _textField(
                      label: 'Full Name',
                      hint: 'Enter your full name',
                      controller: fullNameController,
                    ),

                    const SizedBox(height: 12),

                    _textField(
                      label: 'Phone Number',
                      hint: 'Enter your phone number',
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                    ),

                    const SizedBox(height: 12),

                    _textField(
                      label: 'Email',
                      hint: 'Enter your email',
                      controller: emailController,
                      keyboardType:
                          TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 12),

                    _textArea(
                      label: 'Address',
                      hint: 'Enter your address',
                      controller: addressController,
                    ),

                    const SizedBox(height: 32),

                    // IDENTITY VERIFICATION
                    _sectionTitle('4. Identity Verification'),

                    const SizedBox(height: 6),

                    Text(
                      'Please upload your identification documents '
                      'for rental verification.',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        color: const Color(0xFF8C8C8C),
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 14),

                    _uploadCard(
                      title: 'KTP',
                      uploaded: ktpUploaded,
                      onTap: () {
                        setState(() {
                          ktpUploaded = true;
                        });
                      },
                    ),

                    const SizedBox(height: 12),

                    _uploadCard(
                      title: 'SIM',
                      uploaded: simUploaded,
                      onTap: () {
                        setState(() {
                          simUploaded = true;
                        });
                      },
                    ),

                    const SizedBox(height: 32),

                    // BOOKING SUMMARY
                    _sectionTitle('5. Booking Summary'),

                    const SizedBox(height: 14),

                    _summaryCard(),

                    const SizedBox(height: 24),

                    // PAYMENT
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFFFACC15),
                          foregroundColor:
                              const Color(0xFF111827),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Continue to Payment',
                          style:
                              GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF111827),
      ),
    );
  }

  Widget _vehicleCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
      ),
      child: Row(
        children: [
          // Temporary vehicle image
          Container(
            width: 124,
            height: 86,
            decoration: BoxDecoration(
              color: const Color(0xFFE5E7EB),
              borderRadius: BorderRadius.circular(13),
            ),
            child: const Icon(
              Icons.two_wheeler_outlined,
              size: 40,
              color: Color(0xFF8C8C8C),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  'Honda Scoopy',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF111827),
                  ),
                ),

                const SizedBox(height: 7),

                Row(
                  children: [
                    const Icon(
                      Icons.two_wheeler_outlined,
                      size: 18,
                      color: Color(0xFF8C8C8C),
                    ),

                    const SizedBox(width: 7),

                    Expanded(
                      child: Text(
                        'Motorcycle · Automatic',
                        style:
                            GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          color: const Color(0xFF8C8C8C),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 9),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Rp 150.000',
                        style:
                            GoogleFonts.plusJakartaSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFACC15),
                        ),
                      ),
                      TextSpan(
                        text: ' / day',
                        style:
                            GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          color: const Color(0xFF8C8C8C),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // DATE FIELD

  Widget _dateField({
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _fieldLabel(label),

        const SizedBox(height: 9),

        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 62,
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color(0xFFE0E3E7),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 21,
                  color: Color(0xFF8C8C8C),
                ),

                const SizedBox(width: 13),

                Expanded(
                  child: Text(
                    value,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      color: value == 'dd/mm/yyyy'
                          ? const Color(0xFF8C8C8C)
                          : const Color(0xFF111827),
                    ),
                  ),
                ),

                const Icon(
                  Icons.calendar_month_outlined,
                  size: 19,
                  color: Color(0xFF8C8C8C),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // RENTAL DURATION

  Widget _durationField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 64,
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFBEB),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFFFACC15),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Rental Duration',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF111827),
                ),
              ),

              const Spacer(),

              Text(
                rentalDuration == 0
                    ? '—'
                    : '$rentalDuration ${rentalDuration == 1 ? 'day' : 'days'}',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF111827),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // FIELD LABEL

  Widget _fieldLabel(String label) {
    return Text(
      label,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF111827),
      ),
    );
  }

  Widget _textField({
    required String label,
    required String hint,
    required TextEditingController controller,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _fieldLabel(label),

        const SizedBox(height: 8),

        TextField(
          controller: controller,
          keyboardType: keyboardType,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            color: const Color(0xFF111827),
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: const Color(0xFF8C8C8C),
            ),
            contentPadding:
                const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE0E3E7),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE0E3E7),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFACC15),
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _textArea({
    required String label,
    required String hint,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _fieldLabel(label),

        const SizedBox(height: 8),

        TextField(
          controller: controller,
          maxLines: 3,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            color: const Color(0xFF111827),
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: const Color(0xFF8C8C8C),
            ),
            contentPadding: const EdgeInsets.all(14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE0E3E7),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFE0E3E7),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFFACC15),
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // PICKUP METHOD

  Widget _pickupCard({
    required String title,
    required String subtitle,
    required String value,
  }) {
    final isSelected = pickupMethod == value;

    return GestureDetector(
      onTap: () {
        setState(() {
          pickupMethod = value;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFFFFFBEB)
              : const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: isSelected
                ? const Color(0xFFFACC15)
                : const Color(0xFFE0E3E7),
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_off,
              color: isSelected
                  ? const Color(0xFF111827)
                  : const Color(0xFF8C8C8C),
              size: 21,
            ),

            const SizedBox(width: 11),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    subtitle,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 11,
                      color: const Color(0xFF8C8C8C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // UPLOAD DOCUMENT

  Widget _uploadCard({
    required String title,
    required bool uploaded,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: uploaded
                ? const Color(0xFFFACC15)
                : const Color(0xFFE0E3E7),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFBEB),
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Icon(
                Icons.upload_file_outlined,
                color: Color(0xFF111827),
                size: 21,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    uploaded
                        ? 'Uploaded ✓'
                        : 'Upload $title',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 10,
                      color: uploaded
                          ? const Color(0xFF111827)
                          : const Color(0xFF8C8C8C),
                    ),
                  ),
                ],
              ),
            ),

            if (uploaded)
              Text(
                'Replace',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF111827),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // BOOKING SUMMARY

  Widget _summaryCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          _summaryRow(
            'Vehicle',
            'Honda Scoopy',
          ),

          _summaryRow(
            'Rental Date',
            formatDate(rentalDate),
          ),

          _summaryRow(
            'Return Date',
            formatDate(returnDate),
          ),

          _summaryRow(
            'Rental Duration',
            rentalDuration == 0
                ? '-'
                : '$rentalDuration ${rentalDuration == 1 ? 'day' : 'days'}',
          ),

          _summaryRow(
            'Pickup Method',
            pickupMethod == 'pickup'
                ? 'Rental Location'
                : 'Delivery',
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Color(0xFFE5E7EB),
              height: 1,
            ),
          ),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Rental Price',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                ),
              ),

              Text(
                totalRentalPrice == 0
                    ? 'Rp 0'
                    : 'Rp ${totalRentalPrice.toString().replaceAllMapped(
                        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                        (match) => '${match.group(1)}.',
                      )}',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _summaryRow(
    String label,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 11,
                color: const Color(0xFF8C8C8C),
              ),
            ),
          ),

          const SizedBox(width: 12),

          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF111827),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
