import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  List<bool> _isExpandedList = [];

  @override
  void initState() {
    super.initState();
    _isExpandedList = List.generate(faqData.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid-19",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
        itemCount: faqData.length,
        itemBuilder: (context, index) {
          return ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: EdgeInsets.all(0),
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                _isExpandedList[index] = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text(faqData[index]['question']!,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.black87,
                        )),
                  );
                },
                body: ListTile(
                  title: Text(faqData[index]['answer']!,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.black87,
                      )),
                ),
                isExpanded: _isExpandedList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}

List<Map<String, String>> faqData = [
  {
    'question': 'Booking Reschedule due to COVID-19',
    'answer':
        'To Reschedule your booking, please visit the my trip section and select your booking to initiate a Reschedule request. For further information regarding COVID-19 travel policies'
  },
  {
    'question':
        'Travel guidelines for international passengers arriving in Bangladesh',
    'answer':
        'all international passengers arriving at the airports must follow specific guidelines before heading to their final destinations. For more information. \n Contact : info.airVenture.com'
  }
];
