
const String version = '0.0.1';

abstract class Button {
  void render();
}

class SecondaryButton implements Button {
  @override
  void render() {
    print('render secondary Button');
  }
}

class PrimaryButton implements Button {
  @override
  void render() {
    print('render primary Button');
  }
}
class CustomButton implements Button {
  @override
  void render() {
    print('render primary Button');
  }
}

class FactoryMethod {
  Button createButton(String button) {
    switch (button) {
      case 'primary':
        return PrimaryButton();
      case 'secondary':
        return SecondaryButton();
      default:
        return CustomButton();
    }
  }
}

void main(List<String> arguments) {}
