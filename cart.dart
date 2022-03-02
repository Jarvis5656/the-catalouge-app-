import 'package:catalouge/cors/store.dart';
import 'package:catalouge/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //field

  CatalogModel _catalog;

  // Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item

}

class AddMutation extends VxMutation<MyStore> {
  // @ovrerride
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store.cart._itemIds.add(item.id);
    //throw UnimplementedError();
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  // @ovrerride
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store.cart._itemIds.remove(item.id);
    //throw UnimplementedError();
  }
}