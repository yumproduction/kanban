import 'package:flutter/material.dart';
import 'package:kanban/app/app.dart';
import 'package:kanban/core/theme.dart';
import 'package:kanban/repositories/data/service_locator.dart';
import 'package:kanban/repositories/main/tasks.dart';
import 'package:kanban/screens/login/bloc/logout/logout_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/screens/login/usecases/login_usecase.dart';
import 'package:kanban/screens/main/bloc/main_bloc.dart';
import 'package:kanban/screens/main/widgets/task.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const MainScreen());

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState

    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => LogoutBloc(context.read<AuthUseCaseImpl>()),
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    context.read<LogoutBloc>().add(const OnLogout());
                    // Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.accent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                color: AppTheme.grey,
                child: TabBar(
                  controller: tabController,
                  tabs: [
                    Tab(
                      text: 'On hold',
                    ),
                    Tab(
                      text: 'In Progress',
                    ),
                    Tab(
                      text: 'Needs Review',
                    ),
                    Tab(
                      text: 'Approved',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: List.generate(
                    tabController.length,
                    (index) => BlocProvider(
                      create: (_) => MainBloc(
                          TasksRepository(context.read<DioSettings>()), index),
                      child: BlocBuilder<MainBloc, MainState>(
                        builder: (context, state) {
                          Widget child = const SizedBox();
                          var key = const Key('Loading');
                          if (state is InitialMainState) {
                            context
                                .watch<MainBloc>()
                                .add(const MainEvent.onLoadTasks());
                          } else if (state is LoadingMainState) {
                            child = const Center(
                                child: CircularProgressIndicator());
                          } else if (state is SuccessState) {
                            child = SingleChildScrollView(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: List.generate(
                                  state.generalInfo.tasks.length,
                                  (i) => Column(
                                    children: [
                                      SizedBox(
                                        height: i == 0 ? 0 : 16,
                                      ),
                                      TaskCard(task: state.generalInfo.tasks[i])
                                    ],
                                  ),
                                ),
                              ),
                            );
                            key = const Key('Loaded');
                          }
                          return AnimatedSizeAndFade(
                            vsync: this,
                            child: Container(
                              alignment: Alignment.topCenter,
                              key: key,
                              width: double.infinity,
                              child: child,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
