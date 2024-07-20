import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4286658816),
      surfaceTint: Color(4288300544),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4290140179),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4286796598),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294952615),
      onSecondaryContainer: Color(4284298009),
      tertiary: Color(4284637696),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289769547),
      onTertiaryContainer: Color(4280427008),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965494),
      onSurface: Color(4280490516),
      onSurfaceVariant: Color(4283843384),
      outline: Color(4287197799),
      outlineVariant: Color(4292657587),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937448),
      inversePrimary: Color(4294948493),
      primaryFixed: Color(4294958025),
      onPrimaryFixed: Color(4281471488),
      primaryFixedDim: Color(4294948493),
      onPrimaryFixedVariant: Color(4285936640),
      secondaryFixed: Color(4294958025),
      onSecondaryFixed: Color(4281471488),
      secondaryFixedDim: Color(4294490517),
      onSecondaryFixedVariant: Color(4284955681),
      tertiaryFixed: Color(4293453948),
      onTertiaryFixed: Color(4280098048),
      tertiaryFixedDim: Color(4291611747),
      onTertiaryFixedVariant: Color(4282992896),
      surfaceDim: Color(4293514958),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963691),
      surfaceContainer: Color(4294830817),
      surfaceContainerHigh: Color(4294501595),
      surfaceContainerHighest: Color(4294107094),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285476864),
      surfaceTint: Color(4288300544),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4290140179),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284692509),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4288440394),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282729728),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286085143),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4280490516),
      onSurfaceVariant: Color(4283514677),
      outline: Color(4285553488),
      outlineVariant: Color(4287460970),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937448),
      inversePrimary: Color(4294948493),
      primaryFixed: Color(4290271765),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4288103424),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4288440394),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4286599220),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286085143),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4284440320),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293514958),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963691),
      surfaceContainer: Color(4294830817),
      surfaceContainerHigh: Color(4294501595),
      surfaceContainerHighest: Color(4294107094),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282193664),
      surfaceTint: Color(4288300544),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285476864),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282062850),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284692509),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280558592),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282729728),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281344024),
      outline: Color(4283514677),
      outlineVariant: Color(4283514677),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937448),
      inversePrimary: Color(4294961116),
      primaryFixed: Color(4285476864),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283244288),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284692509),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282917642),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282729728),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281216512),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293514958),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963691),
      surfaceContainer: Color(4294830817),
      surfaceContainerHigh: Color(4294501595),
      surfaceContainerHighest: Color(4294107094),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948493),
      surfaceTint: Color(4294948493),
      onPrimary: Color(4283638272),
      primaryContainer: Color(4287972096),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4294490517),
      onSecondary: Color(4283246093),
      secondaryContainer: Color(4284429595),
      onSecondaryContainer: Color(4294953645),
      tertiary: Color(4292532848),
      onTertiary: Color(4281479680),
      tertiaryContainer: Color(4289769547),
      onTertiaryContainer: Color(4280427008),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279898380),
      onSurface: Color(4294107094),
      onSurfaceVariant: Color(4292657587),
      outline: Color(4288973951),
      outlineVariant: Color(4283843384),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294107094),
      inversePrimary: Color(4288300544),
      primaryFixed: Color(4294958025),
      onPrimaryFixed: Color(4281471488),
      primaryFixedDim: Color(4294948493),
      onPrimaryFixedVariant: Color(4285936640),
      secondaryFixed: Color(4294958025),
      onSecondaryFixed: Color(4281471488),
      secondaryFixedDim: Color(4294490517),
      onSecondaryFixedVariant: Color(4284955681),
      tertiaryFixed: Color(4293453948),
      onTertiaryFixed: Color(4280098048),
      tertiaryFixedDim: Color(4291611747),
      onTertiaryFixedVariant: Color(4282992896),
      surfaceDim: Color(4279898380),
      surfaceBright: Color(4282529585),
      surfaceContainerLowest: Color(4279569416),
      surfaceContainerLow: Color(4280490516),
      surfaceContainer: Color(4280753432),
      surfaceContainerHigh: Color(4281477154),
      surfaceContainerHighest: Color(4282266156),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294950038),
      surfaceTint: Color(4294948493),
      onPrimary: Color(4280946176),
      primaryContainer: Color(4292638000),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294819225),
      onSecondary: Color(4280946176),
      secondaryContainer: Color(4290544740),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292532848),
      onTertiary: Color(4280361216),
      tertiaryContainer: Color(4289769547),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898380),
      onSurface: Color(4294966008),
      onSurfaceVariant: Color(4292986296),
      outline: Color(4290223761),
      outlineVariant: Color(4288052850),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294107094),
      inversePrimary: Color(4286002176),
      primaryFixed: Color(4294958025),
      onPrimaryFixed: Color(4280420864),
      primaryFixedDim: Color(4294948493),
      onPrimaryFixedVariant: Color(4284229376),
      secondaryFixed: Color(4294958025),
      onSecondaryFixed: Color(4280420864),
      secondaryFixedDim: Color(4294490517),
      onSecondaryFixedVariant: Color(4283706386),
      tertiaryFixed: Color(4293453948),
      onTertiaryFixed: Color(4279374336),
      tertiaryFixedDim: Color(4291611747),
      onTertiaryFixedVariant: Color(4281874432),
      surfaceDim: Color(4279898380),
      surfaceBright: Color(4282529585),
      surfaceContainerLowest: Color(4279569416),
      surfaceContainerLow: Color(4280490516),
      surfaceContainer: Color(4280753432),
      surfaceContainerHigh: Color(4281477154),
      surfaceContainerHighest: Color(4282266156),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966008),
      surfaceTint: Color(4294948493),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294950038),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294819225),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966490),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291874919),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898380),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966008),
      outline: Color(4292986296),
      outlineVariant: Color(4292986296),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294107094),
      inversePrimary: Color(4282981632),
      primaryFixed: Color(4294959570),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294950038),
      onPrimaryFixedVariant: Color(4280946176),
      secondaryFixed: Color(4294959570),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294819225),
      onSecondaryFixedVariant: Color(4280946176),
      tertiaryFixed: Color(4293782656),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291874919),
      onTertiaryFixedVariant: Color(4279703296),
      surfaceDim: Color(4279898380),
      surfaceBright: Color(4282529585),
      surfaceContainerLowest: Color(4279569416),
      surfaceContainerLow: Color(4280490516),
      surfaceContainer: Color(4280753432),
      surfaceContainerHigh: Color(4281477154),
      surfaceContainerHighest: Color(4282266156),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
