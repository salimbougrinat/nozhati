import 'package:flutter/material.dart';

import '../widget/contentfilter_widget.dart';

class AppAsset {
  static List contentTypes = [
    {'title': 'All', 'icon': Icons.all_inclusive, 'type': ContentType.all},
    {
      'title': 'Residence',
      'icon': Icons.house_outlined,
      'type': ContentType.residence,
    },
    {
      'title': 'vehicle',
      'icon': Icons.car_rental_outlined,
      'type': ContentType.vehicle,
    },
    {
      'title': 'Restaurant',
      'icon': Icons.restaurant_outlined,
      'type': ContentType.restaurant,
    },
    {
      'title': 'Park',
      'icon': Icons.local_florist_outlined,
      'type': ContentType.park,
    },
  ];
  List restaurant = [
    {
      'imageUrl': 'assets/images/nick-karvounis-Ciqxn7FE4vE-unsplash.jpg',
      'name': 'The Gourmet Kitchen',
      'details': {
        'address': '123 Main St, Cityville',
        'open time': '10:00 AM',
        'close time': '10:00 PM',
      },
      'rating': 4.5,
      'type': ContentType.restaurant,
    },
    {
      'imageUrl': 'assets/images/shawn-nmpW_WwwVSc-unsplash.jpg',
      'name': 'Seaside Bistro',
      'details': {
        'address': '456 Ocean Dr, Beachtown',
        'open time': '9:00 AM',
        'close time': '9:00 PM',
      },
      'rating': 4.7,
      'type': ContentType.restaurant,
    },
    {
      'imageUrl': 'assets/images/jason-leung-poI7DelFiVA-unsplash.jpg',
      'name': 'Urban Eats',
      'details': {
        'address': '789 Downtown Ave, Metropolis',
        'open time': '11:00 AM',
        'close time': '11:00 PM',
      },
      'rating': 4.3,
      'type': ContentType.restaurant,
    },
    {
      'imageUrl': 'assets/images/restaurant-1343327_1920.jpg',
      'name': 'Classic Diner',
      'details': {
        'address': '101 Old Rd, Countryside',
        'open time': '7:00 AM',
        'close time': '8:00 PM',
      },
      'rating': 4.0,
      'type': ContentType.restaurant,
    },
    {
      'imageUrl': 'assets/images/restaurant-6479814_1920.jpg',
      'name': 'Modern Grill',
      'details': {
        'address': '202 New St, Uptown',
        'open time': '12:00 PM',
        'close time': '12:00 AM',
      },
      'rating': 4.6,
      'type': ContentType.restaurant,
    },
    {
      'imageUrl': 'assets/images/table-791167_1920.jpg',
      'name': 'Cozy Corner',
      'details': {
        'address': '303 Side St, Suburbia',
        'open time': '8:00 AM',
        'close time': '10:00 PM',
      },
      'rating': 4.2,
      'type': ContentType.restaurant,
    },
    {
      'imageUrl': 'assets/images/kitchen-6878026_1920.jpg',
      'name': 'Chef’s Table',
      'details': {
        'address': '404 Gourmet Ln, Foodie City',
        'open time': '6:00 PM',
        'close time': '2:00 AM',
      },
      'rating': 4.8,
      'type': ContentType.restaurant,
    },
  ];

  List residence = [
    {
      'imageUrl': 'assets/images/huy-nguyen-9vvp_nuVaJk-unsplash.jpg',
      'name': 'Cozy Apartment',
      'details': {
        'address': '123 Main St, Cityville',
        'price': 1200,
        'time unit': 'day',
      },
      'rating': 4.5,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/naomi-hebert-MP0bgaS_d1c-unsplash.jpg',
      'name': 'Modern Loft',
      'details': {
        'address': '456 Downtown Ave, Metropolis',
        'price': 1500,
        'time unit': 'day',
      },
      'rating': 4.7,
      'type': ContentType.residence,
    },
    {
      'imageUrl':
          'assets/images/frames-for-your-heart-FqqiAvJejto-unsplash.jpg',
      'name': 'Charming House',
      'details': {
        'address': '789 Suburb Rd, Countryside',
        'price': 2000,
        'time unit': 'day',
      },
      'rating': 4.3,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/huy-nguyen-AB-q9lwCVv8-unsplash.jpg',
      'name': 'Urban Studio',
      'details': {
        'address': '101 City Center, Uptown',
        'price': 1000,
        'time unit': 'day',
      },
      'rating': 4.0,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/francesca-tosolini-tHkJAMcO3QE-unsplash.jpg',
      'name': 'Luxury Apartment',
      'details': {
        'address': '202 High St, Downtown',
        'price': 1800,
        'time unit': 'day',
      },
      'rating': 4.6,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/jarek-ceborski-jn7uVeCdf6U-unsplash.jpg',
      'name': 'Spacious Condo',
      'details': {
        'address': '303 Park Ave, Suburbia',
        'price': 1600,
        'time unit': 'day',
      },
      'rating': 4.2,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/deborah-cortelazzi-gREquCUXQLI-unsplash.jpg',
      'name': 'Rustic Cabin',
      'details': {
        'address': '404 Forest Ln, Woodland',
        'price': 1400,
        'time unit': 'day',
      },
      'rating': 4.8,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/furniture-3243991_1920.jpg',
      'name': 'Elegant Townhouse',
      'details': {
        'address': '505 Elm St, Cityville',
        'price': 2200,
        'time unit': 'day',
      },
      'rating': 4.4,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/apartment-2094645_1920.jpg',
      'name': 'Comfortable Flat',
      'details': {
        'address': '606 Pine St, Beachtown',
        'price': 1300,
        'time unit': 'day',
      },
      'rating': 4.1,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/hall-621741_1920.jpg',
      'name': 'Bright Apartment',
      'details': {
        'address': '707 Maple St, Uptown',
        'price': 1700,
        'time unit': 'day',
      },
      'rating': 4.5,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/apartment-3797468_1920.jpg',
      'name': 'Modern Apartment',
      'details': {
        'address': '808 Oak St, Downtown',
        'price': 1900,
        'time unit': 'day',
      },
      'rating': 4.7,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/home-3429674_1920.jpg',
      'name': 'Family Home',
      'details': {
        'address': '909 Cedar St, Suburbia',
        'price': 2100,
        'time unit': 'day',
      },
      'rating': 4.6,
      'type': ContentType.residence,
    },
    {
      'imageUrl': 'assets/images/kitchen-2094722_1920.jpg',
      'name': 'Stylish Loft',
      'details': {
        'address': '1010 Birch St, Cityville',
        'price': 1500,
        'time unit': 'day',
      },
      'rating': 4.3,
      'type': ContentType.residence,
    },
  ];

  List vehicle = [
    {
      'imageUrl': 'assets/images/olav-tvedt-6lSBynPRaAQ-unsplash.jpg',
      'name': 'Sporty Sedan',
      'details': {'seats count': 5, 'price': 25000, 'time unit': 'day'},
      'rating': 4.5,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/jose-carbajal-8xyki0bqvgw-unsplash.jpg',
      'name': 'Elegant Coupe',
      'details': {'seats count': 4, 'price': 30000, 'time unit': 'day'},
      'rating': 4.7,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/mathieu-renier-4WBvCqeMaDE-unsplash.jpg',
      'name': 'Luxury SUV',
      'details': {'seats count': 7, 'price': 45000, 'time unit': 'day'},
      'rating': 4.3,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/oli-woodman-fwYZ3B_QQco-unsplash.jpg',
      'name': 'Compact Hatchback',
      'details': {'seats count': 5, 'price': 18000, 'time unit': 'day'},
      'rating': 4.0,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/dhiva-krishna-X16zXcbxU4U-unsplash.jpg',
      'name': 'Family Minivan',
      'details': {'seats count': 8, 'price': 28000, 'time unit': 'day'},
      'rating': 4.6,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/sven-d-a4S6KUuLeoM-unsplash.jpg',
      'name': 'Electric Car',
      'details': {'seats count': 5, 'price': 35000, 'time unit': 'day'},
      'rating': 4.2,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/nissan-3679299_1280.jpg',
      'name': 'Nissan Sedan',
      'details': {'seats count': 5, 'price': 22000, 'time unit': 'day'},
      'rating': 4.4,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/mclaren-4223024_1280.jpg',
      'name': 'Luxury Sports Car',
      'details': {'seats count': 2, 'price': 75000, 'time unit': 'day'},
      'rating': 4.8,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/buick-1400243_1280.jpg',
      'name': 'Classic Buick',
      'details': {'seats count': 5, 'price': 15000, 'time unit': 'day'},
      'rating': 4.1,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/car-8607713_1280.jpg',
      'name': 'Modern Compact',
      'details': {'seats count': 5, 'price': 20000, 'time unit': 'day'},
      'rating': 4.5,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/car-604019_1280.jpg',
      'name': 'Sporty Convertible',
      'details': {'seats count': 4, 'price': 40000, 'time unit': 'day'},
      'rating': 4.7,
      'type': ContentType.vehicle,
    },
    {
      'imageUrl': 'assets/images/automobile-176989_1920.jpg',
      'name': 'Vintage Car',
      'details': {'seats count': 4, 'price': 50000, 'time unit': 'day'},
      'rating': 4.6,
      'type': ContentType.vehicle,
    },
  ];

  List park = [
    {
      'imageUrl': 'assets/images/lison-zhao-Lvt7BnCpUJE-unsplash.jpg',
      'name': 'Sunset Park',
      'details': {
        'address': '123 Green St, Cityville',
        'open time': '6:00 AM',
        'close time': '8:00 PM',
      },
      'rating': 4.5,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/duong-chung-6FIQLVpGtmQ-unsplash.jpg',
      'name': 'Central Garden',
      'details': {
        'address': '456 Park Ave, Metropolis',
        'open time': '5:00 AM',
        'close time': '9:00 PM',
      },
      'rating': 4.7,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/shalev-cohen-V4SQ38VqV58-unsplash.jpg',
      'name': 'Riverside Park',
      'details': {
        'address': '789 Nature Rd, Countryside',
        'open time': '7:00 AM',
        'close time': '7:00 PM',
      },
      'rating': 4.3,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/ignacio-brosa-vJDbPuxUS_s-unsplash.jpg',
      'name': 'Mountain View Park',
      'details': {
        'address': '101 Hill Ln, Uptown',
        'open time': '8:00 AM',
        'close time': '6:00 PM',
      },
      'rating': 4.0,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/pau-morfin-uBYnUJ0niJI-unsplash.jpg',
      'name': 'City Park',
      'details': {
        'address': '202 Urban Ave, Downtown',
        'open time': '6:00 AM',
        'close time': '10:00 PM',
      },
      'rating': 4.6,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/mio-ito-DaGIjXNl5oA-unsplash.jpg',
      'name': 'Blossom Garden',
      'details': {
        'address': '303 Flower St, Suburbia',
        'open time': '5:00 AM',
        'close time': '8:00 PM',
      },
      'rating': 4.2,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/garden-2040714_1280.jpg',
      'name': 'Tranquil Gardens',
      'details': {
        'address': '404 Peace Rd, Cityville',
        'open time': '7:00 AM',
        'close time': '9:00 PM',
      },
      'rating': 4.4,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/carnival-1492099_1280.jpg',
      'name': 'Festival Park',
      'details': {
        'address': '505 Celebration Ln, Metropolis',
        'open time': '10:00 AM',
        'close time': '11:00 PM',
      },
      'rating': 4.8,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/flowers-3112055_1280.jpg',
      'name': 'Floral Haven',
      'details': {
        'address': '606 Bloom St, Countryside',
        'open time': '6:00 AM',
        'close time': '8:00 PM',
      },
      'rating': 4.1,
      'type': ContentType.park,
    },
    {
      'imageUrl': 'assets/images/sunset-6596290_1280.jpg',
      'name': 'Golden Hour Park',
      'details': {
        'address': '707 Sunset Ave, Beachtown',
        'open time': '5:00 AM',
        'close time': '9:00 PM',
      },
      'rating': 4.5,
      'type': ContentType.park,
    },
  ];
}
