class SupermarketItem {
  String name;
  String price;
  int stock;
  String imageAsset;
  List<String> imageUrls;

  SupermarketItem({
    required this.name,
    required this.price,
    required this.stock,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var supermarketItemList = [
  SupermarketItem(
    name: 'Susu Ultra Milk',
    price: 'Rp 20.000',
    stock: 10,
    imageAsset: 'images/susu-ultra.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.sgm2UQe-52LOA0AH_y05nQAAAA?rs=1&pid=ImgDetMain',
    ],
  ),
  SupermarketItem(
    name: 'Roti Tawar Sari Roti',
    price: 'Rp 15.000',
    stock: 5,
    imageAsset: 'images/roti-sari-roti.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.62aWVVAvU11DxSVEaJa7XgHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    ],
  ),
  SupermarketItem(
    name: 'Minyak Goreng Bimoli',
    price: 'Rp 30.000',
    stock: 0,
    imageAsset: 'images/minyak-goreng.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.LIBhtq_72IVfknuWSeNbLQHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ],
  ),
  SupermarketItem(
    name: 'Beras 5kg',
    price: 'Rp 50.000',
    stock: 20,
    imageAsset: 'images/beras.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.ejL9Ic3T-9A71vQz7M8wcwHaHa?w=170&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ],
  ),
  SupermarketItem(
    name: 'Gula Pasir 1kg',
    price: 'Rp 12.000',
    stock: 15,
    imageAsset: 'images/gula.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.m-v3UxX_fSFJiNaBFfKlxAHaHa?w=200&h=200&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ],
  ),
  SupermarketItem(
    name: 'Telur Ayam 1kg',
    price: 'Rp 25.000',
    stock: 12,
    imageAsset: 'images/telur.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.B-kyWCWbzIRsD_7t7cSbXQHaHa?w=176&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ],
  ),
  SupermarketItem(
    name: 'Teh Botol Sosro',
    price: 'Rp 8.000',
    stock: 50,
    imageAsset: 'images/teh-botol.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.NXJ17ppoS95VFlC3xZexawHaHa?w=176&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ],
  ),
  SupermarketItem(
    name: 'Indomie Goreng',
    price: 'Rp 3.500',
    stock: 100,
    imageAsset: 'images/indomie.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.pcsY1nJ_-VlDMzI7jMALeQHaHa?w=212&h=212&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ],
  ),
  SupermarketItem(
    name: 'Kecap Manis ABC',
    price: 'Rp 12.000',
    stock: 25,
    imageAsset: 'images/kecap-abc.jpg',
    imageUrls: [
      'https://th.bing.com/th/id/OIP.HFi0ATk9yaK6j07qTj2GZgHaHa?w=219&h=219&c=7&r=0&o=5&dpr=1.5&pid=1.7',
      'https://via.placeholder.com/150',
      'https://via.placeholder.com/150',
    ],
  ),
];
