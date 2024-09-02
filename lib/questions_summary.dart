import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            data["question"] as String,
                            style: GoogleFonts.lato(
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(data["user_answer"] as String, style: GoogleFonts.lato(
                              color: CupertinoColors.black.withOpacity(.7),
                              fontWeight: FontWeight.bold),),
                          Text(
                            data["correct_answer"] as String,
                            style: GoogleFonts.alef(
                                color: CupertinoColors.systemGreen.darkColor,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
