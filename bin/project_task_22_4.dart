
import 'model/data_shopping.dart';
import 'service/network_service.dart';

void main() async {
  String data = await NetworkService.getData(NetworkService.apiShopping);

  List<Shopping> listData = userListFromData(data);

  for (int i = 0; i < listData.length; i++){
    print(listData[i].type.count[0]);
  }

}
