import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pemilihantopik_model.dart';
export 'pemilihantopik_model.dart';

class PemilihantopikWidget extends StatefulWidget {
  const PemilihantopikWidget({Key? key}) : super(key: key);

  @override
  _PemilihantopikWidgetState createState() => _PemilihantopikWidgetState();
}

class _PemilihantopikWidgetState extends State<PemilihantopikWidget> {
  late PemilihantopikModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PemilihantopikModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                    child: Container(
                      width: 414,
                      height: 71,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pilih topik yang diminati',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Kami akan memberikan informasi dan kayanan yang lebih baik sesuai pilihanmu',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 80, 10, 0),
                    child: Container(
                      width: 414,
                      height: 39,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: TextFormField(
                        controller: _model.textController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Cari wilayah, topik, atau minat',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          filled: true,
                          fillColor: Color(0x14514B4B),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 15,
                          ),
                          suffixIcon: _model.textController!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.textController?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 140, 10, 0),
                    child: Container(
                      width: 414,
                      height: 39,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                        child: Text(
                          'Topik Untukmu',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 160, 10, 0),
                    child: Container(
                      width: 414,
                      height: 564,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 397,
                              height: 110,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Covid - 19',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(13, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkboxValue1 ??= false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue1 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        13, 0, 13, 0),
                                    child: Container(
                                      width: 114,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 300,
                                              height: 61,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 0, 0),
                                                child: Text(
                                                  'Politik',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(35, 0, 0, 0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                            .checkboxValue2 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .checkboxValue2 =
                                                          newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    checkColor:
                                                        Color(0xFF4B39EF),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://www.searchenginejournal.com/wp-content/uploads/2020/12/trend-analysis-featured-image-5fd86ec3e9583.jpg',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Trend',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(39, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkboxValue3 ??= false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue3 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 397,
                              height: 110,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Entertaint',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(7, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkboxValue4 ??= false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue4 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        13, 0, 13, 0),
                                    child: Container(
                                      width: 114,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 300,
                                              height: 61,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 0, 0),
                                                child: Text(
                                                  'Seleb',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 0, 2, 0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                            .checkboxValue5 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .checkboxValue5 =
                                                          newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    checkColor:
                                                        Color(0xFF4B39EF),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Musik',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(38, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkboxValue6 ??= false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue6 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 397,
                              height: 110,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgSFRUYFRgSERERGBgREhgSEhERGBgaGhgYGBgcIS4lHB4rIRgYJjgmKy80NTU1GiQ7QDszPy40NTEBDAwMEA8QHhISHzErJCsxNDQxNDQ0NDQ0NDQ0NDQxMTQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0Mf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAAAQIDBAUGB//EAD0QAAIBAgMFBQUECQUBAAAAAAECAAMRBBIhBTFBUWEGEyJxkTKBobHBFEJy0QcjUmKCkqLC4SRzsvDxs//EABoBAQADAQEBAAAAAAAAAAAAAAABAgMEBQb/xAAqEQACAgEEAAUEAgMAAAAAAAAAAQIRAxIhMVEEIkFxgRMyYZEj0RRCof/aAAwDAQACEQMRAD8A6+HE1o8wox5TVTvOlnAmaUeXo8yoZarSrLpmkN1k1aUBpMPIotZozR55nvJBpFFrLg8O8lN480ihZaKkeeU3izRQsuzyWaUiTUwB3MkJFmjDQSSvFeIteBaAO0JG8jmiiLLbdYrdZFYGKFlip1kinWU6c5IecgfBLLK8W7IhdQCVtoeXGTtL3pgpl4FSPUTDPNqNJ7nR4eClK2tkcAbUcjMAtju0NyeW+NdouRcBdN9wd/TWYbZHIO659zAeLTyk18La6BtT05Tx/wDIzds9V+HxdIsO1HK3GW9ifZNrjgdZRhdtVHUnwgg2IsbdOMoqUsr2O5jm6A8B85zqxyPmGgbwN01uGI/7vkrxGXi2Q/D4uaR6rZWNaqDmADI1jl3EHcRf3+k6Gs85s58tRbbnXIbbr/dPr856G7T1/C5Xkxpvk8nxONY50uCYv1jzNIrUMfeNynQYWuyPi6wlmduUI+CPk8mKsupVZnRBNKIJo5IyUZdGqm00LMyJLlQ85Fouk16Ei1pNHEj3BjWiRGxKT6L0YQtK8tuEmpkFh2g8FEkyxYorUyRheAMkgRYRru0MD1EiVggeYy1WMqVBLFp9ZDLJMtzGLMeUQUyQBlSwX6RXlq3kWY8pFhrYjmECRE1TpIZieEtRBboYgRxkFYRsy+cCzRRpA3bkp9TND7vcPkJFqeVAOJ1PneOodP8AvKefllqkz0cMNMUeY2olnbdrZxfcD/7f1lSeNbfxHz4D4fCb9t0iFWqBuYq34Dx91py6TWYG+j7+V55WTyyZ6Md4lzWdTcXI8NuJPP3zk46iB4yLiyo4G88iB6+s7JsDmG4ix+kprrY33g6ed95kX6kmHA6C2twdOXAgj4T1NB2dQw4j48fjPLMhQgfW2nmfSdzZFY2K3vrmHkeXT856Hgp6Z6ezg8ZC46uje5Ya2jSoeURducau09Y8r5Yd6eRhH3p5QkfA+TyiJ1m1E6zIiTQotLELZGymAOMuDiYhAPrFDVRuFSWB+syZ5arxROo0qbxEWlavHviibLVYSTWMrAk0MgIMnWLIYyRGDrBNIgSRGp5yxnhfjFkUhqokgnIwAUyQQc5WyaAoYeIRnziN+cWWaLFqG2okWrHlEQecLmKRLbEHvwgzdIGp0kTUvwiijf5EanSWYZczdBrKx5TbhEAF+ev0lcstMTTDHVIuxHD8X5yupu/7xEsqj2fP/MoxJsvkfp/mcEvVnox9EUYujmolbX8F/Mixnl0Frpu4jyP5GezQeEeQ+QnkMdTyuwG9HNuq8B6WnH4iHEjpwy5ROkcwseGnv5wUaEcRzlakjUDfpyvyk2pkMG/aNj9JzmhW6qylW+6LabyOEjsyoVZc2lroeZvu8uBk6qZWVuDHL9R9ZHE0fGLG1wCSN9xumuKTjJPoyyRUotdnaNucavYwVCQDbUgH1jyT6K7PA0pEs8JHIOsIG3Z5BHYTSlZ5mSoCZrpgS2pdFNLXDJpiW4iaEr9PhElMS9aQi0NMia1AeEvTKZV3csCSpdJ+oZLHST7uJTbhLEcSbYqI0TnJlTwgWELcpW2WpIgUMmDBpEjlJ5I4JNzghlJMkpk0VsvheV5jzhmMUTZYIryoORJrUvFC0TDDrJXPOVFpMPpukE2SZzFnleeAeKJsuVuk3UDoOgHxM56mbcO2nuE5s7pL3Onw6uT9i+qblelz8LSjEi4A/aIEkz+K3IfOQqv7P4h8bzibtM7oqmjSBp7hPP4/R38h8hO8zTz20T439/ymWd+VGmJeYzXsq9G/OBJyJ5p8pGt7PqensmTcaIOv9pnIbFOO9tF6k+g/zCufGPIfG0eJF6ie/wCR/KV1PbHlLx5Kvg7qIbDyHyk8h6yIGkY04z6BbI8J0+xZD1hJ5+sJNlaX5PHCiJopzsrgRykxghyhSDxv0OXTYCa0ea/sS8pNMIBIciVBoyaya35zV9kEf2TrJ1IaGZgDFa01/ZOsi+H6j1k2iHFlaWkz0MYoj9oeoiIUb2F+mpi0NLI5TIhTE1YcCT7pHvRLWVaJxqoMnVp2piqXVQeDqyn46TK+JVU7wutvwsPde2W/vlXkiuWW+lLo1inJLpOZhNpo9ZKGrFk73MvsFNBlvca6305TbtXDhHGUgKSLhhf0OeVeRFo4pGg2gCo36Tk4p8pAQizXUXphyH4G2ex8riHY3FjEZ85DtTqtTIyBdwBGgc2385VZU+C30pep2LIfvCPIvBh6znY+pkcrcAa2U/lcH4zHia7BCysF8NxwAPkb/OVeVIssTfR3CnUaRYOirozknwkgZagC2HMHjPD4Dbrtia9N3LKmFuqgKB3hQ6ALckkkAa8RYT2+FxBbDBgT7I0PiI6aaw52tiYwp7mGji1LFbi6m1u8QN6MR8I6m18lwFJscu9reoBEw4XGeKxv94i6ML/zofnMG1Kr+1u0ZtKbjS3E57eo90wnK1ubwjT2PQbP2oajPmUJkCi2YMdbm5I8pI44FgAdx+IsR9ZwOzVT/TXNwWeq3i3sMxsfgJzqmIYVRY8X3eQnmzyNHowgj6AK17DnONtA6v8AxRbMxufQ7xcSGNFw56PIlPVEmMdMimsLoo5g/wDAyxW0Q9L/ANMhVNgnkf8AjGV9hf3GHvy2maJZFwe9HK1/mIsQP1ijp+ZjqN+sTqG+UjVF6qj92/xI+stBb/JSbpfB1xW4yfeD/wBlFljUjiJ9HpR8/ql0Wd4OkchYcoRRGp9GsLAJLssAsyOkrCyQWTtHaARyx2jhBJJqOlryjGYPOBlCIRvIv4vO80Yr2GHNG+U83+j6uz4MZ2Z2WrUW7sWbQggXPnMHKXZtoj0bsVhKm5EW44hXKnzJYD0mvZdCp3TU6wVWOY3BAQ3OltGI9Zp2jjDSoVKqqGNOm7hSbBra2vwnN2R2mWthnxJQq1EOXQNcjKuYWJA3jpzkJyu22S4x4SRlpX8dNgykXscyKp8iQT8p5TtDRxDUnRFYG4cfrHctk1yhKQNyeF7CfQNkbXXE0RXRWUFmWzWzAqbHcZoxO0aaOtN3CPUtlBBGa5sLG1r3kb3yKVcGDBYhquERirqcilgVdWRragqdRx3icr7UWQgs5C6WAdwP67D+WeqrOgHjKgEhbsQtzyuZnbC0rrZFOcnUH90m+nlEnaEUfP6dTPjsLYsuSnWu1VGVKh4Krk+1lJbduWey2/VWwCgMdPZsfiNZXtLaODwzqlZkpuy51LU2Jy3IuHANtQeMh9tweLYItelWfKSq50d7DU2U6yU2o7hpXsc7FmwBakBYhrnu+G/l8ZR+j0K4rVEypfFVLr3aWFgAPApGU2tuJG48Z3a2wUfRrNppdF0HQkSjA9nFo1GrIzFnCqwcoUIW9tAARa53c5WMqZMo2iG0EJe5CkDpv/hJtOVtIgIfYAC7u71/lDATu7U2ZnNwj7tclQqt/wCcTlPsc2sUc7xYsGv61BeRKRMYngdl1kOOqXYWvQGgFNGAYe0q8b5RzvPru12vSVb3GUbmzi1vIGfOqPZLE08T9oOH72mVClKdUUqgAIKkDQXGUfe15z22Ors6KtnpgD2aoS46X1B87maKSoq4uzPTUZCgsfDaxqFv6Cv1nntvVCiPoEOSwIVVI6XBM7DVrCwJvu1qKy26LcCcLbWFqVEyoUuTr7KtlHLJe8xlJNNIvGLTTZpwlYLQpqu4UEHvygn4zlo96x9/zl9Wk9Ok1U02pU0GiO16gpgLrlO4b9L30nPwb3cn90fG083KmrZ6EHZ6zZeje+bKx0bqD8zMGyOJ5E/P/E11n090pDdUi0ttwqLcoPf7gVvJMLOg5B/pKTWBZWGpswA3D3n3RriQaoTVWC7m+8bAkqQdRcHr03zb6bXuY/UT9gHtof3T8hEdcQP9v+6TIs46I3raSwy3xC/gX01P0jGvMvdEZPtfsbgIGdA4VeURwqz39SPE0yOfmHOE3fYl6wjUiNMjTljtJWitMzcVoWkrQtAI2jtJWjsIBGpu9RPLfo70w9RP2MXVHwWerZTOfsbZKYZXVCxFSo1U59bMbXAsN2k52nudNrYu22t8LXHOhV/4GfMdkYp8MjM1zSxuHr0xrm8S5lB3bw3wafVcSmejURdS1N1AHElbATx9PYFR9md06FKtF6lRFI1PiJIFuYJ99pZcFZcnR7AD/RW5Vag08wfrKu32H8FOuBrSci+ugYXB06qPWS/R6D9ldSCCtZxYggjwoeM7HaXCGphqqAXPdl1HNk8QHwt75HqP9TzPbzG56GHVSP1x74DmAgA/5z1eFw3dJQpDdTC0/Smw+c+cbFxLYnEYSkwuKC5b3+6jNUuR+EKvu6z6fXGqf7n9jRLZCO7s+afpNRDi8MHNkZEVyNCqd74jfoCZ0+zGwcAmJWthsZ3rqr2pmrTckMpBNlAbS8536TUU4rChzZGXK5vbKhqAMb8NCZ2OzPZvBUsQMRhsV3pCuoTvqVQWYWNsgB0kv7QvuPZjePI/SeF7e9oq9KrTwuHJRnVXZlALsHcoiJcaao2u/Ubp7o7x5H6Txvb3sy+Jy16OtSmhQrfKaiXJXKToGBLWvvzHlKRq9y0rrY5/Z/ae0qWJp4fEo7rWJH6wKcigXZlqJcaC5sSeA0uDPoi75817Mdr6yVVweLDG7d2HcFKtNybIHB9oG4FzrxJM+kp9JMuRHg8v2i7a08HX7h6bv+rSpmplToxYWsxH7PPjMtH9JWCIu/e0/wAdINb+RmnW7WbKoVMPXqPRR3TC1srtTU1EyoxXK1rix13zwH6Ouz2GxdOv9oTPkqU1WzuhUEMT7JHxkqqKu7PrVRvCSLaC+onKr12O8+mgnTrew34T8pwsRUtOfLJm8Ejg9rG/0tf/AGmnktkVL3bjZR6T0Xaup/pq3+2fpPL7GHhv0E5MivE/f+jqh9x7TZT+HzP5zs1cIFod+x9psqjmSSo/uP8ACOc8ts/FWFuf5T0u2sQxw9NNwU0zyubKPz/mkeGpJvpf9K599K7ZhLjOvQD+6ZNrkXFTUGn4wV3nko8zlHkTLtM6nmF+TyOJp5yVsSSmgG+6nN/bGN+Ze4mvK/Y6Dnx6ajI1uo4GPZzj7SvVAP6SfzlQIDqo4IF16Ab/AEktl2GI/CgN/wCFl/KXiv5UvyUk/wCNv8HqgI7Spa45yXeieweWTywkO9EUAlnjvK7xgwSTvJWkFUyVjAHaAhaMCASEAYoASpayWaRzyVpExQsZNxa5F+VvqJIseOvukRAyNKJ1M5GzOz+HoVO9poysVZbFy62Nt2bUbufGdat92wOjg+QsRf4yIkryHFMspUcftD2Zw+LytWzhqasqtTfKQCbnQgg+k5Ow+wlPDYlMQlZ27sOMlRUN8yFfaUDdflPWkxqZGlk6kM7x754ztwmPSpTxOFLMlJGVkQZmzMQWLp99SFUaC4sTxuPaFRvtug0jS0W1Jo+NIcXtDF02ellZTTRmSk9OnTpo5YlixJzaneegn2SnvPr8f8wA6xqpBvv04b94kSTvgRaSe5z+0i3wuI64XEf/ADaeJ/Q/7GJ/HRPwefQsbQWoj02uFqI9NsuhCuCpsbaGxnF7M9n6OB7xKdVn71kcioyFlygjTKBp4uUehHrZ2cQbI34T8p5PE17n3kT1WJIZStzqCDbynkK6KT7OXXeCSb2420+E58sbNoSo4/aFC+HqIvtMthfQbwd/lPN7OLKgAUkWy5gCVvvsTwPSe1q0yCCBawsc11vfTeTORSpgMoKlQQwBdCUtfgbNp1mf07jpfZp9Rp2jLhqb8bjKb+Gzgm/Aieh2ptZGoUWRajuCgdO6cOjBFbVWAOXS1xcC45zNhjTF9czDepBKgX0OhGv8M07R2lRCrnYIF8JzlLXKqAFvqPY5zTHgpNVyjLJmVp3wzMlfxKW8NgB4t+l/TfOzsd1V3qtayU7AHi17n4C38QnHxmMpLTDCk7+Esoa4pkDQ2drC2/jKvtDaVLZGLEgKQcqjXhxlY+HcWn+SX4iMk1+DYmKHe6sNFbeQNb6fCWYGpmrEgGwp2zEEKWvuBO/3SnDV0VlYLlV1FwBlN2AN7W3i5Fp3qNJSARY8b3kY8NTtu2mTky3DbhosElY8JaicDboef5GXClO5HFRlynrCbe7hLEUXreMCMQMsB3hCAgBHCAgDgIQgkcZkc0LwBiO8jeBaAO0CIgIESpIEQEQklEAd5W7W3n1Mor1SCb6C/OwM5ztSRizOWY30uW05AazNzldJfs0UY1u/0b6uPRFLasBc+AXHqdI6G0M65lU8bBjYm3lOS+PB0TDu9/2lyr/WR8o1fEv9xKY8yx+AAkeZ8v8ASJ8vX7Oqld7XewPJTu8zOLS2Si1WrKACc/hVSM4Y38TXudfdNK7Pqt7VQ/wgCXU9lc2Y/iYmIxrv5Ib9hvVyj2kUDlpORiMdT3B7kfsUydZ3F2UnEfX5yxNnoOEuk+ira7PIYDbhNUUSmYvopYFLDj4bG/unT2vs2s6ZQ1Kmbm/gepZddQfDrad2psqk/tIDre9tQeYPAzFtDY1EfrHetZASQMRUykAbiuax8pNVyOdkfM8Ls/NVs1R62tvCWpo1j+ytjbj4rz1NbYCJQ75EC+MBgAb3uw1v7v5pm2Nai6vbxVActrHKv7wPS06mLxWdHo57CocwO678NPT0nPHM5Pns0eFRj+inC4TvFyhluLG+XLZbaLpbprOVtHGU791Ys6gbhdRbffU/lNGI7MVyBUTEMGXK2VFVVOW24m5B0l1XCZ1NUDLVvlK2y66X0J3maxpO3uZytqlsZsEQ6gOcpJGU2sFI3XA0AP1nbwqoG0dWYixCMLe8c5hwaLVslZu7uurWAsQOu7WdWjgxQsWXwObLUFgGvuvyvMVJa3ZrJPSqN1Jr8fhNiJpv9dZCkimaFUTpiYMWWOStCXICFozFeCBwheK8AZheKMCAEQElaFoJFAxxmAQEclaFoAAx3iigDMYkYCANlBkQg5D0krwvBIZekLQvHmgAFjtFmhmgDtFaBaLNAJgTlbba693e19TbfOmDOTtBLMWszfhF7zHNqcWol8darZ5EXaq7Ne6+BMo3nnO1gcOpNyLldBfnLc6j2aTgt+5uM14fDkC1phhx6WzXLPUkkX0uU1nDo29FJ52Fwed5ChTtLp1xRg2craGyg2o0PMfWY8JjGp+DEA1UVcqggEDkeuk9GDzlNTCqwIte6nSZTwqW62ZaORrZ8HO2arsGdFuhY5RfVRfdOojcxY8jOHSTE09KSgC9yHbSbsO9Z/FUyhhpZdwH1k49SSTInpbbR0rwlOvOE2MyyKMxQBxyIgIBK8LyNoQCV4i0QhAHmjvFCAMGEULwBkwigDBIyYoERQCUUQMd4A7wvI3hAJRyF47wCUIgYoA7wMUIAiIXjvCVJEIR3ivAHaMRXjEsQFomS8mI7QCjK0cutFBAhCEIAiIrQhAAwhCAEIQgCvC8IQBXheOEAIAQhBI4GEIIETAQhBIQhCAEjeOEALwvHCAK8LxwgBC8IQAvFeOEAYjhCASElCEECvFCEA//2Q==',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Invstasi',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkboxValue7 ??= false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue7 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        13, 0, 13, 0),
                                    child: Container(
                                      width: 114,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 300,
                                              height: 61,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 0, 0),
                                                child: Text(
                                                  'Film',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(47, 0, 0, 0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                            .checkboxValue8 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .checkboxValue8 =
                                                          newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    checkColor:
                                                        Color(0xFF4B39EF),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Money',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                      .checkboxValue9 ??= false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue9 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 397,
                              height: 110,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/png;base64,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',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'BUMN',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value:
                                                      _model.checkboxValue10 ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue10 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        13, 0, 13, 0),
                                    child: Container(
                                      width: 114,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 300,
                                              height: 61,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 0, 0),
                                                child: Text(
                                                  'Tekno',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(36, 0, 0, 0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                            .checkboxValue11 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .checkboxValue11 =
                                                          newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    checkColor:
                                                        Color(0xFF4B39EF),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Gadget',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value:
                                                      _model.checkboxValue12 ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue12 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 397,
                              height: 110,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Sepakbola',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value:
                                                      _model.checkboxValue13 ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue13 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        13, 0, 13, 0),
                                    child: Container(
                                      width: 114,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 300,
                                              height: 61,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 0, 0),
                                                child: Text(
                                                  'Olahraga',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(14, 0, 0, 0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                            .checkboxValue14 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .checkboxValue14 =
                                                          newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    checkColor:
                                                        Color(0xFF4B39EF),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://asset.kompas.com/crops/illgjOGk4wZbv61JqUk0nZ3h80o=/5x3:4000x2667/750x500/data/photo/2022/07/06/62c59e4e144a4.jpg',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Bola INA',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value:
                                                      _model.checkboxValue15 ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue15 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 397,
                              height: 110,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://images.tokopedia.net/img/KRMmCm/2022/9/23/f9122764-32d2-481c-bc59-b70fe32c8c69.jpg',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Bola Inter',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value:
                                                      _model.checkboxValue16 ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue16 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        13, 0, 13, 0),
                                    child: Container(
                                      width: 114,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 300,
                                              height: 61,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 0, 0),
                                                child: Text(
                                                  'Mobil',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 0, 0, 0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                  child: Checkbox(
                                                    value: _model
                                                            .checkboxValue17 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() => _model
                                                              .checkboxValue17 =
                                                          newValue!);
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    checkColor:
                                                        Color(0xFF4B39EF),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 114,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://awsimages.detik.net.id/visual/2023/05/17/sejumlah-motor-listrik-dari-berbagai-jenis-merk-di-tampilkan-dalam-pameran-periklindo-electric-vehicle-show-pevs-di-ji-expo-ke-12_169.jpeg?w=400&q=90',
                                            width: 300,
                                            height: 61,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 0, 0),
                                              child: Text(
                                                'Motor',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 0, 0, 0),
                                              child: Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value:
                                                      _model.checkboxValue18 ??=
                                                          false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        _model.checkboxValue18 =
                                                            newValue!);
                                                  },
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor: Color(0xFF4B39EF),
                                                ),
                                              ),
                                            ),
                                          ],
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
                  ),
                ],
              ),
              Container(
                width: 397,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 132,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Nanti Saja',
                          options: FFButtonOptions(
                            width: 34,
                            height: 40,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF848282),
                                  fontSize: 10,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(143, 0, 0, 0),
                      child: Container(
                        width: 108,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Simpan',
                                options: FFButtonOptions(
                                  width: 106,
                                  height: 35,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  color: Color(0xFF2D6EFB),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
