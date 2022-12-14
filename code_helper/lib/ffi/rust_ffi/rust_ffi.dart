// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.51.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'package:meta/meta.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

abstract class RustFfi {
  Stream<ParseEntity> parseCode({required String path, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kParseCodeConstMeta;
}

class ParseEntity {
  final int status;
  final String msg;

  ParseEntity({
    required this.status,
    required this.msg,
  });
}

class RustFfiImpl implements RustFfi {
  final RustFfiPlatform _platform;
  factory RustFfiImpl(ExternalLibrary dylib) =>
      RustFfiImpl.raw(RustFfiPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory RustFfiImpl.wasm(FutureOr<WasmModule> module) =>
      RustFfiImpl(module as ExternalLibrary);
  RustFfiImpl.raw(this._platform);
  Stream<ParseEntity> parseCode({required String path, dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_parse_code(port_, arg0),
      parseSuccessData: _wire2api_parse_entity,
      constMeta: kParseCodeConstMeta,
      argValues: [path],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kParseCodeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "parse_code",
        argNames: ["path"],
      );

// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  ParseEntity _wire2api_parse_entity(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return ParseEntity(
      status: _wire2api_i32(arr[0]),
      msg: _wire2api_String(arr[1]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class RustFfiPlatform extends FlutterRustBridgeBase<RustFfiWire> {
  RustFfiPlatform(ffi.DynamicLibrary dylib) : super(RustFfiWire(dylib));
// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class RustFfiWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustFfiWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustFfiWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire_parse_code(
    int port_,
    ffi.Pointer<wire_uint_8_list> path,
  ) {
    return _wire_parse_code(
      port_,
      path,
    );
  }

  late final _wire_parse_codePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_parse_code');
  late final _wire_parse_code = _wire_parse_codePtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
