// Scaffold(
//       body: DefaultTabController(
//         length: 2,
//         child: CustomScrollView(
//           slivers: [
//             SliverPersistentHeader(
//               delegate: FlexibleHeaderDelegate(
//                 collapsedHeight: 110,
//                 statusBarHeight: MediaQuery.of(context).padding.top,
//                 expandedHeight: 240,
//                 leading: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: DeviateTheme.scaffoldBackgroundColor),
//                     child: IconButton(
//                       padding: EdgeInsets.zero,
//                       icon: const Icon(Icons.arrow_back_outlined),
//                       onPressed: () {},
//                     ),
//                   ),
//                 ),
//                 background: MutableBackground(
//                   expandedWidget: Container(
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: const AssetImage('images/artistscreenimg.png'),
//                         fit: BoxFit.cover,
//                         colorFilter: ColorFilter.mode(
//                             Theme.of(context)
//                                 .scaffoldBackgroundColor
//                                 .withOpacity(0.5),
//                             BlendMode.exclusion),
//                       ),
//                     ),
//                   ),
//                   collapsedColor: DeviateTheme.foregroundColor,
//                 ),
//                 actions: [
//                   IconButton(
//                     icon: const Icon(Icons.more_vert),
//                     onPressed: () {},
//                   ),
//                 ],
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Olivia Rodrigo',
//                               style: Theme.of(context).textTheme.displaySmall,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {},
//                               child: Text(
//                                 'Follow',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .titleSmall
//                                     ?.copyWith(color: Colors.white),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text('5K Followers | 2.5K Listeners  | 10 Following',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .titleSmall
//                                 ?.copyWith(color: Colors.white)),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: PreferredSize(
//                 preferredSize: Size.zero,
//                 child: TabBar(
//                   labelColor: Colors.redAccent,
//                   unselectedLabelColor: Colors.white,
//                   indicatorSize: TabBarIndicatorSize.tab,
//                   labelStyle: Theme.of(context).textTheme.titleMedium,
//                   indicator: const BoxDecoration(
//                     borderRadius: BorderRadius.vertical(
//                       top: Radius.elliptical(40, 20),
//                       bottom: Radius.elliptical(10, 5),
//                     ),
//                     color: DeviateTheme.foregroundColor,
//                   ),
//                   tabs: const [
//                     Tab(text: "Top Songs"),
//                     Tab(text: "All Songs"),
//                   ],
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: SizedBox(
//                 height: 300,
//                 child: TabBarView(
//                   children: [
//                     ArtistListView(),
//                     // All Songs tab content
//                     Center(
//                       child: Text("All Songs"),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );