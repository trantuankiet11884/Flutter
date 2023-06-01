import 'package:flutter/material.dart';
import 'CartPage.dart';

class ProductDetailPage extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String description;

  ProductDetailPage({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String _selectedColor = 'Blue';
  String _selectedSize = 'Medium';
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.image),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
              child: Text(
                '${widget.price}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Color:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      CustomRadioButton(
                        label: 'Blue',
                        value: 'Blue',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      CustomRadioButton(
                        label: 'Red',
                        value: 'Red',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      CustomRadioButton(
                        label: 'Green',
                        value: 'Green',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      CustomRadioButton(
                        label: 'Yellow',
                        value: 'Yellow',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Size:',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    children: [
                      CustomRadioButton(
                        label: 'S',
                        value: 'S',
                        groupValue: _selectedSize,
                        onChanged: (value) {
                          setState(() {
                            _selectedSize = value;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      CustomRadioButton(
                        label: 'M',
                        value: 'M',
                        groupValue: _selectedSize,
                        onChanged: (value) {
                          setState(() {
                            _selectedSize = value;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      CustomRadioButton(
                        label: 'L',
                        value: 'L',
                        groupValue: _selectedSize,
                        onChanged: (value) {
                          setState(() {
                            _selectedSize = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quantity:',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (_quantity > 1) {
                          _quantity--;
                        }
                      });
                    },
                  ),
                  Text('$_quantity'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _quantity++;
                      });
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 32,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final String label;
  final String value;
  final String groupValue;
  final Function(String) onChanged;

  CustomRadioButton({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: groupValue == value ? Colors.blue : Colors.grey,
          ),
          color: groupValue == value ? Colors.blue : Colors.white,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: groupValue == value ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
