import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'meditate_model.dart';
export 'meditate_model.dart';

class MeditateWidget extends StatefulWidget {
  const MeditateWidget({Key? key}) : super(key: key);

  @override
  _MeditateWidgetState createState() => _MeditateWidgetState();
}

class _MeditateWidgetState extends State<MeditateWidget> {
  late MeditateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeditateModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xB1D28239),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Text(
              'Meditations',
              style: FlutterFlowTheme.of(context).titleLarge,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(-1.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: false,
                          isScrollable: true,
                          labelStyle: FlutterFlowTheme.of(context).titleMedium,
                          unselectedLabelStyle:
                              FlutterFlowTheme.of(context).titleMedium,
                          labelColor: Color(0xFF0E0101),
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          backgroundColor: FlutterFlowTheme.of(context).accent1,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderWidth: 2.0,
                          borderRadius: 12.0,
                          elevation: 0.0,
                          labelPadding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          buttonMargin: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 16.0, 0.0),
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          tabs: [
                            Tab(
                              text: 'Peace',
                            ),
                            Tab(
                              text: 'Sound Baths',
                            ),
                            Tab(
                              text: 'Mindfulness Talks',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      'Categories',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await launchURL('');
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 12.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'data:image/png;base64,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',
                                                  width: 70.0,
                                                  height: 70.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=ez3GgRqhNvA',
                                                width: 200.0,
                                                height: 50.0,
                                                autoPlay: false,
                                                looping: true,
                                                mute: false,
                                                showControls: true,
                                                showFullScreen: true,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Mind',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqV9_Wx4BM-vIAFDV3EK2oW1xoWoMBB_mP2GRhBBKXU3pwMPbQeH-jgqBNGsi0-94IUy4&usqp=CAU',
                                                width: 70.0,
                                                height: 70.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            FlutterFlowYoutubePlayer(
                                              url:
                                                  'https://www.youtube.com/watch?v=94IFuiy8TPM&pp=ygUQcGVhY2UgbWVkaXRhdGlvbg%3D%3D',
                                              width: 200.0,
                                              height: 50.0,
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Peace',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 12.0, 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjwvT1eQSqznM3HqV2XwaM4sD93XLG-A1-lw&usqp=CAU',
                                                    width: 70.0,
                                                    height: 70.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                FlutterFlowYoutubePlayer(
                                                  url:
                                                      'https://www.youtube.com/watch?v=sy5Pb_bERfY&pp=ygUPbG92ZSBtZWRpdGF0aW9u',
                                                  width: 200.0,
                                                  height: 50.0,
                                                  autoPlay: false,
                                                  looping: true,
                                                  mute: false,
                                                  showControls: true,
                                                  showFullScreen: true,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Love',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,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',
                                                width: 70.0,
                                                height: 70.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.1, 0.25),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=hnPRRJaziHg&pp=ygUSY2xhcml0eSBtZWRpdGF0aW9u',
                                                width: 200.0,
                                                height: 55.0,
                                                autoPlay: false,
                                                looping: true,
                                                mute: false,
                                                showControls: true,
                                                showFullScreen: true,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Clarity',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,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',
                                                width: 70.0,
                                                height: 70.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.6, 0.3),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=aEqlQvczMJQ&pp=ygUQc2xlZXAgbWVkaXRhdGlvbg%3D%3D',
                                                width: 200.0,
                                                height: 72.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: true,
                                                showFullScreen: true,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Sleep',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 44.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      'Categories',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('HomePage');
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 12.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Morning',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                              ),
                                              FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=WY4xO67Mjk4&pp=ygUTbW9ybmluZyBzb3VuZCBiYXRocw%3D%3D',
                                                width: 237.0,
                                                height: 50.0,
                                                autoPlay: false,
                                                looping: true,
                                                mute: false,
                                                showControls: true,
                                                showFullScreen: true,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Chakra',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                            ),
                                            FlutterFlowYoutubePlayer(
                                              url:
                                                  'https://www.youtube.com/watch?v=e5Fx1aZP1VU&pp=ygUSY2hha3JhIHNvdW5kIGJhdGhz',
                                              width: 249.0,
                                              height: 50.0,
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('HomePage');
                                                },
                                                child: Text(
                                                  'Sleep',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge,
                                                ),
                                              ),
                                            ),
                                            FlutterFlowYoutubePlayer(
                                              url:
                                                  'https://www.youtube.com/watch?v=UUNwd9CHPSM&pp=ygURc2xlZXAgc291bmQgYmF0aHM%3D',
                                              width: 268.0,
                                              height: 50.0,
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 44.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      'Categories',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FlutterFlowYoutubePlayer(
                                              url:
                                                  'https://www.youtube.com/watch?v=e87yutxTaEY&pp=ygUQamF5IHNoZXR0eSBwZWFjZQ%3D%3D',
                                              width: 100.0,
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Choosing Peace',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FlutterFlowYoutubePlayer(
                                              url:
                                                  'https://www.youtube.com/watch?v=FkOwRj2iZxQ&pp=ygUTbGV0dGluZyBnbyBzYWRoZ3VydQ%3D%3D',
                                              width: 100.0,
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Letting go',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FlutterFlowYoutubePlayer(
                                              url:
                                                  'https://www.youtube.com/watch?v=4qykb6jKXdo&pp=ygUWbWFuaWZlc3RpbmcgamF5IHNoZXR0eQ%3D%3D',
                                              width: 100.0,
                                              autoPlay: false,
                                              looping: true,
                                              mute: false,
                                              showControls: true,
                                              showFullScreen: true,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Manifesting',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('meditate');
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 44.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
