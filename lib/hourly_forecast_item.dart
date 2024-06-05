import "package:flutter/material.dart";

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;

  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child:  Column(
          children: [
            Text(
              maxLines: 1,
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(height: 10),
            Text(
              temperature,
              style:const  TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
