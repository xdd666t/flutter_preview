// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.54.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'package:meta/meta.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

abstract class RustFfi {
  Future<int> add({required int left, required int right, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kAddConstMeta;

  Future<int> selfAdd({required int num, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSelfAddConstMeta;
}

class RustFfiImpl implements RustFfi {
  final RustFfiPlatform _platform;
  factory RustFfiImpl(ExternalLibrary dylib) =>
      RustFfiImpl.raw(RustFfiPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory RustFfiImpl.wasm(FutureOr<WasmModule> module) =>
      RustFfiImpl(module as ExternalLibrary);
  RustFfiImpl.raw(this._platform);
  Future<int> add({required int left, required int right, dynamic hint}) {
    var arg0 = api2wire_usize(left);
    var arg1 = api2wire_usize(right);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_add(port_, arg0, arg1),
      parseSuccessData: _wire2api_usize,
      constMeta: kAddConstMeta,
      argValues: [left, right],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kAddConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "add",
        argNames: ["left", "right"],
      );

  Future<int> selfAdd({required int num, dynamic hint}) {
    var arg0 = api2wire_usize(num);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_self_add(port_, arg0),
      parseSuccessData: _wire2api_usize,
      constMeta: kSelfAddConstMeta,
      argValues: [num],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSelfAddConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "self_add",
        argNames: ["num"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  int _wire2api_usize(dynamic raw) {
    return castInt(raw);
  }
}

// Section: api2wire

@protected
int api2wire_usize(int raw) {
  return raw;
}
// Section: finalizer

class RustFfiPlatform extends FlutterRustBridgeBase<RustFfiWire> {
  RustFfiPlatform(ffi.DynamicLibrary dylib) : super(RustFfiWire(dylib));

// Section: api2wire

// Section: finalizer

// Section: api_fill_to_wire

}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class RustFfiWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

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

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(uintptr_t)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(uintptr_t)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<uintptr_t Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_add(
    int port_,
    int left,
    int right,
  ) {
    return _wire_add(
      port_,
      left,
      right,
    );
  }

  late final _wire_addPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, uintptr_t, uintptr_t)>>('wire_add');
  late final _wire_add =
      _wire_addPtr.asFunction<void Function(int, int, int)>();

  void wire_self_add(
    int port_,
    int num,
  ) {
    return _wire_self_add(
      port_,
      num,
    );
  }

  late final _wire_self_addPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, uintptr_t)>>(
          'wire_self_add');
  late final _wire_self_add =
      _wire_self_addPtr.asFunction<void Function(int, int)>();

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

class _Dart_Handle extends ffi.Opaque {}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
typedef uintptr_t = ffi.UnsignedLong;
