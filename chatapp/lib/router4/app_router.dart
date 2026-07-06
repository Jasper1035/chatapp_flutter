import 'package:chatapp/pages/chats_page.dart';
import 'package:chatapp/pages/main_page.dart';
import 'package:go_router/go_router.dart';

var router = GoRouter(
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ChatsPage.path,
              builder: (context, state) {
                return ChatsPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ChatsPage.path,
              builder: (context, state) {
                return ChatsPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ChatsPage.path,
              builder: (context, state) {
                return ChatsPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ChatsPage.path,
              builder: (context, state) {
                return ChatsPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: ChatsPage.path,
              builder: (context, state) {
                return ChatsPage();
              },
            ),
          ],
        ),
      ],
      builder: (context, state, shell) {
        return MainPage(statefulNavigationShell: shell);
      },
    ),
  ],
  initialLocation: ChatsPage.path,
);
