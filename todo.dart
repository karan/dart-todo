import 'dart:html';

InputElement input;
UListElement list;

void main() {
  input = querySelector('#item');
  list = querySelector('#list');

  input.onChange.listen(addItem);
}

void addItem(Event e) {
  var newItem = new LIElement();
  newItem.text = input.value;
  newItem.onClick.listen((e) => newItem.remove());
  input.value = '';
  list.children.add(newItem);
}