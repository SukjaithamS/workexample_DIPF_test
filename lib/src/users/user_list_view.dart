import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:worksample/src/api/data_provider.dart';

import 'package:worksample/src/users/user.dart';
import 'user_details_view.dart';

/// Displays a list of Users.
class UserListView extends ConsumerWidget {
  const UserListView({
    super.key,
  });
  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<User>> items = ref.watch(userDataProvider);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/e1/41/d7/e141d7effed11cdc54af366b9e9196c1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('List of Students',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey)),
        ),

        // To work with lists that may contain a large number of items, it’s best
        // to use the ListView.builder constructor.
        //
        // In contrast to the default ListView constructor, which requires
        // building all Widgets up front, the ListView.builder constructor lazily
        // builds Widgets as they’re scrolled into view.
        body: items.when(
          data: (data) => ListView.builder(
            restorationId: 'userListView',
            itemCount: data.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return const SizedBox(
                  height: 30,
                );
              }
              final item = data[index - 1];

              return Card(
                color: Colors.white.withOpacity(0.3),
                child: ListTile(
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: 1),
                    title: Text(
                      "${item.firstName} ${item.lastName}",
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                    leading: CircleAvatar(
                      minRadius: 25,
                      maxRadius: 30,
                      backgroundColor: Colors.transparent,
                      foregroundImage: NetworkImage(item.image),
                    ),
                    trailing: const Icon(Icons.more_vert, color: Colors.white),
                    onTap: () {
                      // Navigate to the details page. If the user leaves and returns to
                      // the app after it has been killed while running in the
                      // background, the navigation stack is restored.
                      Navigator.restorablePushNamed(
                        context,
                        UserDetailsView.routeName,
                        arguments: {'item': item.toJson()},
                      );
                    }),
              );
            },
          ),
          error: (e, s) => const Center(
            child: Text('Uh oh. Something went wrong!'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
