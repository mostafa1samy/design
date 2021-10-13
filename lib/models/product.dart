class Product {
  final int id;
  final double price,add;
  final String title, subTitle, description, image,date;

  Product(
      {this.id,
      this.price,
      this.title,
      this.subTitle,
      this.description,
        this.add,
      this.image,
      this.date});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 2222.52,
    title: "عبد المنعم عميل",
    subTitle: "6مراجعات",
    image: "assets/images/mostafa.jpg",
    description:
        " هو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعةهو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعة ",
    date: "1/12/2018 الى1/10/2020من",
      add:4.1,
  ),
  Product(
      id: 1,
      price: 2222.52,
      title: "عبد المنعم عميل",
      subTitle: "6مراجعات",
      add: 4.1,
      image: "assets/images/mostafa.jpg",
      description:
      " هو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعةهو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعة ",
      date: "1/12/2018 الى 1/10/2020"
  ),
  Product(
      id: 1,
      price: 2222.52,
      title: "عبد المنعم عميل",
      add: 4.1,
      subTitle: "6مراجعات",
      image: "assets/images/mostafa.jpg",
      description:
      " هو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعةهو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعة ",
      date: "1/12/2018 الى 1/10/2020"
  ),
  Product(
      id: 1,
      price: 2222.52,
      title: "عبد المنعم عميل",
      subTitle: "6مراجعات",
      add: 4.1,
      image: "assets/images/mostafa.jpg",
      description:
      " هو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعةهو محرر نص وهمى"
          " لطباعة هو محرر نص وهمى لطباعة ",
      date: "1/12/2018 الى 1/10/2020"
  ),
  Product(
      id: 1,
      price: 2222.52,
      title: "عبد المنعم عميل",
      subTitle: "6مراجعات",
      add: 4.1,
      image: "assets/images/mostafa.jpg",
      description:
      " هو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعةهو محرر نص وهمى لطباعة هو محرر نص وهمى لطباعة ",
      date: "1/12/2018 الى 1/10/2020"
  ),
];
