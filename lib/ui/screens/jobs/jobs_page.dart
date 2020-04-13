import 'package:flutter/material.dart';
import 'package:flutter_portugal_home/provider/jobs_provider.dart';
import 'package:flutter_portugal_home/resources/strings.dart';
import 'package:flutter_portugal_home/ui/screens/jobs/components/job_offer_contact_us.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/app_bar.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/drawer.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/footer.dart';
import 'package:flutter_portugal_home/ui/screens/widgets/seperator.dart';
import 'package:provider/provider.dart';
import 'components/job_tile.dart';
import 'components/top_text.dart';

class JobsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final jobs = Provider.of<JobsProvider>(context);
    jobs.getJobs();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar.appBar(context),
      drawer: MyDrawer.drawer(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TopText(jobsTitle),
              for (int i = 0; i < jobs.data.length; i++) ...[
                JobTile(
                  jobs.data[i]['name'],
                  jobs.data[i]['description'],
                  jobs.data[i]['image'],
                  jobs.data[i]['html_body'],
                  jobs.data[i]['last_update'],
                  jobs.data[i]['url'],
                ),
              ],
              SeperatorRow(),
              JobOfferContactUs()
            ],
          ),
        ),
      ),
      persistentFooterButtons: Footer.footer(context),
    );
  }
}
