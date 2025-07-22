import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummayItem extends StatelessWidget {
  const SummayItem(this.Itemdata, {super.key});
  final Map<String, Object> Itemdata;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ((Itemdata['question_index'] as int) + 1,).toString(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Itemdata['questions'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(Itemdata['user_answer'] as String,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252),
                    )),
                Text(
                  Itemdata['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
