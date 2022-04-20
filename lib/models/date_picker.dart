import 'package:intl/intl.dart';

DateTime? date;

String? getText(){
  if(date==null)
  {
    return 'Select Date';
  }
  else{
    return DateFormat('MM/dd/yyyy').format(date!);
  }
}


