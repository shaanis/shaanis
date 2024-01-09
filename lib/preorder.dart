import 'package:flutter/material.dart';

class PreOrderPage extends StatefulWidget {
  const PreOrderPage({Key? key}) : super(key: key); // Fixed the constructor

  @override
  State<PreOrderPage> createState() => _PreOrderPageState();
}

class _PreOrderPageState extends State<PreOrderPage> {
  var _value = "-1";
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 78.0),
          child: Text(
            "Prebooking",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height *0.85,
          margin: EdgeInsets.all(15),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'ITEMS',
                style: TextStyle(
                    color: Color(0xff32343f),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff53e510), width: 2.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 20, bottom: 20)),
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text('Select Item'),
                      value: '-1',
                    ),
                    DropdownMenuItem(
                      child: Text('Rice'),
                      value: '1',
                    ),
                    DropdownMenuItem(
                      child: Text('Biriyani'),
                      value: '2',
                    ),
                    DropdownMenuItem(
                      child: Text('Ghee Rice'),
                      value: '3',
                    ),
                    DropdownMenuItem(
                      child: Text('Pazhampori'),
                      value: '4',
                    ),
                    DropdownMenuItem(
                      child: Text('Samosa'),
                      value: '5', // Changed value from '4' to '5'
                    ),
                  ],
                  onChanged: (v) {
                    setState(() {
                      _value = v.toString();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text('DATE'),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff53e510), width: 2.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    suffixIcon:
                          Icon(Icons.calendar_today_outlined ,color: Colors.black,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                  onTap: _selectDate,
                ),
              ),

              SizedBox(
                height: 40,
              ),
              Text('QUANTITY'),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff53e510), width: 2.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Select Quantity',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Spacer(),
              Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xff53e510),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(350, 50),
                    ),
                      onPressed: (){}, child: Text('Book Now')))
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _selectDate() async{
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2010),
        lastDate: DateTime(2050),
      );
    if( _picked != null){
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
