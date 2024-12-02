import 'package:args/args.dart';

const String version = '0.0.1';
abstract class Button{
  void render();
}

class SecondaryButton implements Button{
  @override
  void render() {
  print('render secondary Button');
  }

}
class PrimaryButton implements Button{
  @override
  void render() {
    print('render primary Button');
  }

}

class FactoryMethod{
  Button createButton(String button){
    switch(button){
      case 'primary':
        return PrimaryButton().render();
    }
  }
}

void main(List<String> arguments) {

}