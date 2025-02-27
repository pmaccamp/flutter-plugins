part of health;

/// List of all available data types.
enum HealthDataType {
  ACTIVE_ENERGY_BURNED,
  AUDIOGRAM,
  BASAL_ENERGY_BURNED,
  BLOOD_GLUCOSE,
  BLOOD_OXYGEN,
  BLOOD_PRESSURE_DIASTOLIC,
  BLOOD_PRESSURE_SYSTOLIC,
  BODY_FAT_PERCENTAGE,
  BODY_MASS_INDEX,
  BODY_TEMPERATURE,
  DIETARY_CARBS_CONSUMED,
  DIETARY_ENERGY_CONSUMED,
  DIETARY_FATS_CONSUMED,
  DIETARY_PROTEIN_CONSUMED,
  FORCED_EXPIRATORY_VOLUME,
  HEART_RATE,
  HEART_RATE_VARIABILITY_SDNN,
  HEIGHT,
  RESTING_HEART_RATE,
  STEPS,
  WAIST_CIRCUMFERENCE,
  WALKING_HEART_RATE,
  WEIGHT,
  DISTANCE_WALKING_RUNNING,
  FLIGHTS_CLIMBED,
  MOVE_MINUTES,
  DISTANCE_DELTA,
  MINDFULNESS,
  WATER,
  SLEEP_IN_BED,
  SLEEP_ASLEEP,
  SLEEP_AWAKE,
  EXERCISE_TIME,
  WORKOUT,
  NUTRIENT,
  HEADACHE_NOT_PRESENT,
  HEADACHE_MILD,
  HEADACHE_MODERATE,
  HEADACHE_SEVERE,
  HEADACHE_UNSPECIFIED,

  // Heart Rate events (specific to Apple Watch)
  HIGH_HEART_RATE_EVENT,
  LOW_HEART_RATE_EVENT,
  IRREGULAR_HEART_RATE_EVENT,
  ELECTRODERMAL_ACTIVITY,
}

enum HealthDataAccess {
  READ,
  WRITE,
  READ_WRITE,
}

/// List of data types available on iOS
const List<HealthDataType> _dataTypeKeysIOS = [
  HealthDataType.ACTIVE_ENERGY_BURNED,
  HealthDataType.AUDIOGRAM,
  HealthDataType.BASAL_ENERGY_BURNED,
  HealthDataType.BLOOD_GLUCOSE,
  HealthDataType.BLOOD_OXYGEN,
  HealthDataType.BLOOD_PRESSURE_DIASTOLIC,
  HealthDataType.BLOOD_PRESSURE_SYSTOLIC,
  HealthDataType.BODY_FAT_PERCENTAGE,
  HealthDataType.BODY_MASS_INDEX,
  HealthDataType.BODY_TEMPERATURE,
  HealthDataType.DIETARY_CARBS_CONSUMED,
  HealthDataType.DIETARY_ENERGY_CONSUMED,
  HealthDataType.DIETARY_FATS_CONSUMED,
  HealthDataType.DIETARY_PROTEIN_CONSUMED,
  HealthDataType.ELECTRODERMAL_ACTIVITY,
  HealthDataType.FORCED_EXPIRATORY_VOLUME,
  HealthDataType.HEART_RATE,
  HealthDataType.HEART_RATE_VARIABILITY_SDNN,
  HealthDataType.HEIGHT,
  HealthDataType.HIGH_HEART_RATE_EVENT,
  HealthDataType.IRREGULAR_HEART_RATE_EVENT,
  HealthDataType.LOW_HEART_RATE_EVENT,
  HealthDataType.RESTING_HEART_RATE,
  HealthDataType.STEPS,
  HealthDataType.WAIST_CIRCUMFERENCE,
  HealthDataType.WALKING_HEART_RATE,
  HealthDataType.WEIGHT,
  HealthDataType.FLIGHTS_CLIMBED,
  HealthDataType.DISTANCE_WALKING_RUNNING,
  HealthDataType.MINDFULNESS,
  HealthDataType.SLEEP_IN_BED,
  HealthDataType.SLEEP_AWAKE,
  HealthDataType.SLEEP_ASLEEP,
  HealthDataType.WATER,
  HealthDataType.EXERCISE_TIME,
  HealthDataType.WORKOUT,
  HealthDataType.HEADACHE_NOT_PRESENT,
  HealthDataType.HEADACHE_MILD,
  HealthDataType.HEADACHE_MODERATE,
  HealthDataType.HEADACHE_SEVERE,
  HealthDataType.HEADACHE_UNSPECIFIED,
];

/// List of data types available on Android
const List<HealthDataType> _dataTypeKeysAndroid = [
  HealthDataType.ACTIVE_ENERGY_BURNED,
  HealthDataType.BLOOD_GLUCOSE,
  HealthDataType.BLOOD_OXYGEN,
  HealthDataType.BLOOD_PRESSURE_DIASTOLIC,
  HealthDataType.BLOOD_PRESSURE_SYSTOLIC,
  HealthDataType.BODY_FAT_PERCENTAGE,
  HealthDataType.BODY_MASS_INDEX,
  HealthDataType.BODY_TEMPERATURE,
  HealthDataType.HEART_RATE,
  HealthDataType.HEIGHT,
  HealthDataType.STEPS,
  HealthDataType.WEIGHT,
  HealthDataType.MOVE_MINUTES,
  HealthDataType.DISTANCE_DELTA,
  HealthDataType.SLEEP_AWAKE,
  HealthDataType.SLEEP_ASLEEP,
  HealthDataType.SLEEP_IN_BED,
  HealthDataType.WATER,
  HealthDataType.NUTRIENT,
  HealthDataType.WORKOUT,
];

/// Maps a [HealthDataType] to a [HealthDataUnit].
const Map<HealthDataType, HealthDataUnit> _dataTypeToUnit = {
  HealthDataType.ACTIVE_ENERGY_BURNED: HealthDataUnit.KILOCALORIE,
  HealthDataType.AUDIOGRAM: HealthDataUnit.DECIBEL_HEARING_LEVEL,
  HealthDataType.BASAL_ENERGY_BURNED: HealthDataUnit.KILOCALORIE,
  HealthDataType.BLOOD_GLUCOSE: HealthDataUnit.MILLIGRAM_PER_DECILITER,
  HealthDataType.BLOOD_OXYGEN: HealthDataUnit.PERCENT,
  HealthDataType.BLOOD_PRESSURE_DIASTOLIC: HealthDataUnit.MILLIMETER_OF_MERCURY,
  HealthDataType.BLOOD_PRESSURE_SYSTOLIC: HealthDataUnit.MILLIMETER_OF_MERCURY,
  HealthDataType.BODY_FAT_PERCENTAGE: HealthDataUnit.PERCENT,
  HealthDataType.BODY_MASS_INDEX: HealthDataUnit.NO_UNIT,
  HealthDataType.BODY_TEMPERATURE: HealthDataUnit.DEGREE_CELSIUS,
  HealthDataType.DIETARY_CARBS_CONSUMED: HealthDataUnit.GRAM,
  HealthDataType.DIETARY_ENERGY_CONSUMED: HealthDataUnit.KILOCALORIE,
  HealthDataType.DIETARY_FATS_CONSUMED: HealthDataUnit.GRAM,
  HealthDataType.DIETARY_PROTEIN_CONSUMED: HealthDataUnit.GRAM,
  HealthDataType.ELECTRODERMAL_ACTIVITY: HealthDataUnit.SIEMEN,
  HealthDataType.FORCED_EXPIRATORY_VOLUME: HealthDataUnit.LITER,
  HealthDataType.HEART_RATE: HealthDataUnit.BEATS_PER_MINUTE,
  HealthDataType.HEIGHT: HealthDataUnit.METER,
  HealthDataType.RESTING_HEART_RATE: HealthDataUnit.BEATS_PER_MINUTE,
  HealthDataType.STEPS: HealthDataUnit.COUNT,
  HealthDataType.WAIST_CIRCUMFERENCE: HealthDataUnit.METER,
  HealthDataType.WALKING_HEART_RATE: HealthDataUnit.BEATS_PER_MINUTE,
  HealthDataType.WEIGHT: HealthDataUnit.KILOGRAM,
  HealthDataType.DISTANCE_WALKING_RUNNING: HealthDataUnit.METER,
  HealthDataType.FLIGHTS_CLIMBED: HealthDataUnit.COUNT,
  HealthDataType.MOVE_MINUTES: HealthDataUnit.MINUTE,
  HealthDataType.DISTANCE_DELTA: HealthDataUnit.METER,

  HealthDataType.WATER: HealthDataUnit.LITER,
  HealthDataType.SLEEP_IN_BED: HealthDataUnit.MINUTE,
  HealthDataType.SLEEP_ASLEEP: HealthDataUnit.MINUTE,
  HealthDataType.SLEEP_AWAKE: HealthDataUnit.MINUTE,
  HealthDataType.MINDFULNESS: HealthDataUnit.MINUTE,
  HealthDataType.EXERCISE_TIME: HealthDataUnit.MINUTE,
  HealthDataType.WORKOUT: HealthDataUnit.NO_UNIT,

  HealthDataType.HEADACHE_NOT_PRESENT: HealthDataUnit.MINUTE,
  HealthDataType.HEADACHE_MILD: HealthDataUnit.MINUTE,
  HealthDataType.HEADACHE_MODERATE: HealthDataUnit.MINUTE,
  HealthDataType.HEADACHE_SEVERE: HealthDataUnit.MINUTE,
  HealthDataType.HEADACHE_UNSPECIFIED: HealthDataUnit.MINUTE,

  // Heart Rate events (specific to Apple Watch)
  HealthDataType.HIGH_HEART_RATE_EVENT: HealthDataUnit.NO_UNIT,
  HealthDataType.LOW_HEART_RATE_EVENT: HealthDataUnit.NO_UNIT,
  HealthDataType.IRREGULAR_HEART_RATE_EVENT: HealthDataUnit.NO_UNIT,
  HealthDataType.HEART_RATE_VARIABILITY_SDNN: HealthDataUnit.MILLISECOND,
};

const PlatformTypeJsonValue = {PlatformType.IOS: 'ios', PlatformType.ANDROID: 'android'};

/// List of all [HealthDataUnit]s.
enum HealthDataUnit {
  // Mass units
  GRAM,
  KILOGRAM,
  OUNCE,
  POUND,
  STONE,
  // MOLE_UNIT_WITH_MOLAR_MASS, // requires molar mass input - not supported yet
  // MOLE_UNIT_WITH_PREFIX_MOLAR_MASS, // requires molar mass & prefix input - not supported yet

  // Length units
  METER,
  INCH,
  FOOT,
  YARD,
  MILE,

  // Volume units
  LITER,
  MILLILITER,
  FLUID_OUNCE_US,
  FLUID_OUNCE_IMPERIAL,
  CUP_US,
  CUP_IMPERIAL,
  PINT_US,
  PINT_IMPERIAL,

  // Pressure units
  PASCAL,
  MILLIMETER_OF_MERCURY,
  INCHES_OF_MERCURY,
  CENTIMETER_OF_WATER,
  ATMOSPHERE,
  DECIBEL_A_WEIGHTED_SOUND_PRESSURE_LEVEL,

  // Time units
  SECOND,
  MILLISECOND,
  MINUTE,
  HOUR,
  DAY,

  // Energy units
  JOULE,
  KILOCALORIE,
  LARGE_CALORIE,
  SMALL_CALORIE,

  // Temperature units
  DEGREE_CELSIUS,
  DEGREE_FAHRENHEIT,
  KELVIN,

  // Hearing units
  DECIBEL_HEARING_LEVEL,

  // Frequency units
  HERTZ,

  // Electrical conductance units
  SIEMEN,

  // Potential units
  VOLT,

  // Pharmacology units
  INTERNATIONAL_UNIT,

  // Scalar units
  COUNT,
  PERCENT,

  // Other units
  BEATS_PER_MINUTE,
  MILLIGRAM_PER_DECILITER,
  UNKNOWN_UNIT,
  NO_UNIT,
}

/// List of [HealthWorkoutActivityType]s.
/// Commented for which platform they are supported
enum HealthWorkoutActivityType {
  // Both
  ARCHERY,
  BADMINTON,
  BASEBALL,
  BASKETBALL,
  BIKING, // This also entails the iOS version where it is called CYCLING
  BOXING,
  CRICKET,
  CURLING,
  ELLIPTICAL,
  FENCING,
  AMERICAN_FOOTBALL,
  AUSTRALIAN_FOOTBALL,
  SOCCER,
  GOLF,
  GYMNASTICS,
  HANDBALL,
  HIGH_INTENSITY_INTERVAL_TRAINING,
  HIKING,
  HOCKEY,
  SKATING,
  JUMP_ROPE,
  KICKBOXING,
  MARTIAL_ARTS,
  PILATES,
  RACQUETBALL,
  ROWING,
  RUGBY,
  RUNNING,
  SAILING,
  CROSS_COUNTRY_SKIING,
  DOWNHILL_SKIING,
  SNOWBOARDING,
  SOFTBALL,
  SQUASH,
  STAIR_CLIMBING,
  SWIMMING,
  TABLE_TENNIS,
  TENNIS,
  VOLLEYBALL,
  WALKING,
  WATER_POLO,
  YOGA,

  // iOS only
  BOWLING,
  CROSS_TRAINING,
  TRACK_AND_FIELD,
  DISC_SPORTS,
  LACROSSE,
  PREPARATION_AND_RECOVERY,
  FLEXIBILITY,
  COOLDOWN,
  WHEELCHAIR_WALK_PACE,
  WHEELCHAIR_RUN_PACE,
  HAND_CYCLING,
  CORE_TRAINING,
  FUNCTIONAL_STRENGTH_TRAINING,
  TRADITIONAL_STRENGTH_TRAINING,
  MIXED_CARDIO,
  STAIRS,
  STEP_TRAINING,
  FITNESS_GAMING,
  BARRE,
  CARDIO_DANCE,
  SOCIAL_DANCE,
  MIND_AND_BODY,
  PICKLEBALL,
  CLIMBING,
  EQUESTRIAN_SPORTS,
  FISHING,
  HUNTING,
  PLAY,
  SNOW_SPORTS,
  PADDLE_SPORTS,
  SURFING_SPORTS,
  WATER_FITNESS,
  WATER_SPORTS,
  TAI_CHI,
  WRESTLING,

  // Android only
  AEROBICS,
  BIATHLON,
  CALISTHENICS,
  CIRCUIT_TRAINING,
  CROSS_FIT,
  DANCING,
  DIVING,
  ELEVATOR,
  ERGOMETER,
  ESCALATOR,
  FRISBEE_DISC,
  GARDENING,
  GUIDED_BREATHING,
  HORSEBACK_RIDING,
  HOUSEWORK,
  INTERVAL_TRAINING,
  IN_VEHICLE,
  KAYAKING,
  KETTLEBELL_TRAINING,
  KICK_SCOOTER,
  KITE_SURFING,
  MEDITATION,
  MIXED_MARTIAL_ARTS,
  P90X,
  PARAGLIDING,
  POLO,
  ROCK_CLIMBING, // on iOS this is the same as CLIMBING
  RUNNING_JOGGING, // on iOS this is the same as RUNNING
  RUNNING_SAND, // on iOS this is the same as RUNNING
  RUNNING_TREADMILL, // on iOS this is the same as RUNNING
  SCUBA_DIVING,
  SKATING_CROSS, // on iOS this is the same as SKATING
  SKATING_INDOOR, // on iOS this is the same as SKATING
  SKATING_INLINE, // on iOS this is the same as SKATING
  SKIING_BACK_COUNTRY,
  SKIING_KITE,
  SKIING_ROLLER,
  SLEDDING,
  STAIR_CLIMBING_MACHINE,
  STANDUP_PADDLEBOARDING,
  STILL,
  STRENGTH_TRAINING,
  SURFING,
  SWIMMING_OPEN_WATER,
  SWIMMING_POOL,
  TEAM_SPORTS,
  TILTING,
  VOLLEYBALL_BEACH,
  VOLLEYBALL_INDOOR,
  WAKEBOARDING,
  WALKING_FITNESS,
  WALKING_NORDIC,
  WALKING_STROLLER,
  WALKING_TREADMILL,
  WEIGHTLIFTING,
  WHEELCHAIR,
  WINDSURFING,
  ZUMBA,

  //
  OTHER,
}

enum MealType {
  MEAL_TYPE_BREAKFAST,
  MEAL_TYPE_DINNER,
  MEAL_TYPE_LUNCH,
  MEAL_TYPE_SNACK,
  MEAL_TYPE_UNKNOWN,
}
