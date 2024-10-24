import 'package:daily_exam_api/screen/addProduct.dart';
import 'package:daily_exam_api/screen/deleteProduct.dart';
import 'package:daily_exam_api/screen/updateProduct.dart';
import 'package:daily_exam_api/screen/viewProduct.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Management',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // View Products Button
              _buildActionButton(
                icon: Icons.visibility,
                label: 'View Products',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Viewproduct();
                  }));
                },
              ),
              const SizedBox(height: 20),
              
              // Add Product Button
              _buildActionButton(
                icon: Icons.add,
                label: 'Add Product',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddProductPage();
                  }));
                },
              ),
              const SizedBox(height: 20),

              // Delete Product Button
              _buildActionButton(
                icon: Icons.delete,
                label: 'Delete Product',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DeleteProductPage();
                  }));
                },
              ),
              const SizedBox(height: 20),

              // Update Product Button
              _buildActionButton(
                icon: Icons.update,
                label: 'Update Product',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UpdateProductPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({required IconData icon, required String label, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        backgroundColor: Colors.greenAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 30, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
