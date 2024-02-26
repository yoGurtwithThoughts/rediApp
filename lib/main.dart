import 'package:flutter/material.dart';
import 'package:oech_app001/my_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://hyknbwhwrzrcjgefpvhv.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh5a25id2h3cnpyY2pnZWZwdmh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY2ODQ2NzMsImV4cCI6MjAyMjI2MDY3M30.u0RENNqmz4Ab5WmHnXHc8x-pbdlhN50fxgx6Bt-mAdE',
  );
  //  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp( const MyApp());
}


