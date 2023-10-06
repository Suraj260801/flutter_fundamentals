abstract class Product{
  display();
}
class ProductA implements Product{
  @override
  display() {
     print("Product A");
  }

}
class ProductB implements Product{
  @override
  display() {
    print("Product B");
  }

}
abstract class Creator{
  createProduct();
}
class ProductCreatorA implements Creator{
  @override
  createProduct() {
     return ProductA();
  }

}
class ProductCreatorB implements Creator{
  @override
  createProduct() {
    return ProductB();
  }

}

