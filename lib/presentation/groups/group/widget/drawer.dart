import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koru/application/providers.dart';
import 'package:koru/presentation/groups/group_list/groups_page.dart';
import 'package:koru/presentation/members/members_page.dart';
import 'package:koru/presentation/settlement/settlements_page.dart';

class KoruDrawer extends ConsumerWidget {
  const KoruDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  'koru.png',
                  height: 80,
                ),
                const Text(
                  'Koru',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Members'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MembersPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.balance),
            title: const Text('Settlements'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettlementsPage(),
                ),
              );
            },
          ),
          const Divider(
            thickness: 4.0,
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Groups'),
            onTap: () {
              ref.read(koruStateService).groupUnSelected();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const GroupsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
