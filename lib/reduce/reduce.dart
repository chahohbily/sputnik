import 'package:sputnik_test_task/screens/log_in/log_in.dart';

String errorReducer(String state, dynamic action){
  if (action == Actions.Loaded){
    return 'Loaded';
  }
  if (action == Actions.Error){
    return 'Error';
  }
  if (action == Actions.Loading){
    return 'Loading';
  }
  return '';
}