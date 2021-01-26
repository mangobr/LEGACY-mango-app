import 'package:Mango/widgets/cards/historyCard.dart';
import 'package:Mango/widgets/headers/header.dart';
import 'package:Mango/widgets/navigation/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class FoodScanHistoryScreen extends StatefulWidget {
  @override
  _FoodScanHistoryScreenState createState() => _FoodScanHistoryScreenState();
}

class _FoodScanHistoryScreenState extends State<FoodScanHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: MangoHeader(
            color: Theme.of(context).colorScheme.secondaryVariant,
            message: 'Histórico de registros'),
      ),
      bottomNavigationBar: MangoBottomNavBar(),
      body: SafeArea(
        child: ListView(
          children: [
            FoodScanHistoryCard(),
            FoodScanHistoryCard(),
            FoodScanHistoryCard(),
            FoodScanHistoryCard(),
            FoodScanHistoryCard(),
            FoodScanHistoryCard(),
            FoodScanHistoryCard(),
            FoodScanHistoryCard(),
          ],
        ),
      ),
    );
  }
}
