import 'package:flutter/material.dart';
import 'package:ticket_app1/base/utils/all_json.dart' as json_data;
import 'package:ticket_app1/base/utils/app_routes.dart'as routes;
import 'package:ticket_app1/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('All Tickets'))),

      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children:
              json_data.ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                  // Handle ticket tap
                  onTap: () {
                    var index = json_data.ticketList.indexOf(singleTicket);
                    print("I am tapped on the ticket $index");
                    Navigator.pushNamed(
                      context,
                      routes.AppRoutes.ticketScreen,
                      arguments: {"index": index},
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: TicketView(
                      ticket: singleTicket,
                      wholeScreen: true,
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}