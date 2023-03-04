class Dater {
  static String calculateAge(DateTime birthDate, {DateTime? today}) {
    today ??= DateTime.now();

    int years = today.year - birthDate.year;
    int months = today.month - birthDate.month;
    int days = today.day - birthDate.day;

    if (days < 0) {
      months--;
      days += daysInMonth(birthDate.year, birthDate.month);
    }
    if (months < 0) {
      years--;
      months += 12;
    }

    String age = '$years years';

    if (months > 0) {
      age += ' $months months';
    }

    if (days > 0) {
      age += ' and $days days';
    }

    return age;
  }

  static int daysInMonth(int year, int month) {
    return DateTime(year, month + 1, 0).day;
  }

  static bool isLeapYear(int year) {
    if (year % 4 != 0) {
      return false;
    } else if (year % 100 != 0) {
      return true;
    } else if (year % 400 != 0) {
      return false;
    } else {
      return true;
    }
  }

  static DateTime addDays(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  static DateTime subtractDays(DateTime date, int days) {
    return date.subtract(Duration(days: days));
  }

  static DateTime addMonths(DateTime date, int months) {
    int year = date.year;
    int month = date.month;
    int day = date.day;

    for (int i = 0; i < months; i++) {
      month++;
      if (month > 12) {
        month = 1;
        year++;
      }
      day = day.clamp(1, daysInMonth(year, month));
    }

    return DateTime(year, month, day);
  }

  static DateTime subtractMonths(DateTime date, int months) {
    int year = date.year;
    int month = date.month;
    int day = date.day;

    for (int i = 0; i < months; i++) {
      month--;
      if (month < 1) {
        month = 12;
        year--;
      }
      day = day.clamp(1, daysInMonth(year, month));
    }

    return DateTime(year, month, day);
  }

  static int calculateAgeInMonths(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int years = currentDate.year - birthDate.year;
    int months = currentDate.month - birthDate.month;
    int totalMonths = years * 12 + months;

    if (currentDate.day < birthDate.day) {
      totalMonths--;
    }

    return totalMonths;
  }

  static int calculateAgeInDays(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    return currentDate.difference(birthDate).inDays;
  }

  static int calculateAgeInWeeks(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int days = currentDate.difference(birthDate).inDays;
    return (days / 7).floor();
  }

  static int calculateAgeInHours(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    return currentDate.difference(birthDate).inHours;
  }

  static int calculateAgeInMinutes(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    return currentDate.difference(birthDate).inMinutes;
  }

  static int calculateAgeInSeconds(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    return currentDate.difference(birthDate).inSeconds;
  }

  static String calculateNextBirthdate(DateTime birthdate) {
    // Calculate the next birthday
    DateTime now = DateTime.now();
    DateTime nextBirthday = DateTime(now.year, birthdate.month, birthdate.day);
    if (nextBirthday.isBefore(now) || nextBirthday == now) {
      nextBirthday = DateTime(now.year + 1, birthdate.month, birthdate.day);
    }

    // Calculate the difference between now and the next birthday
    Duration difference = nextBirthday.difference(now);

    // Calculate the number of months, weeks, and days in the difference
    int months =
        (difference.inDays / daysInMonth(nextBirthday.year, nextBirthday.month))
            .floor();
    int weeks = ((difference.inDays -
                months * daysInMonth(nextBirthday.year, nextBirthday.month)) /
            7)
        .floor();
    int days = difference.inDays -
        months * daysInMonth(nextBirthday.year, nextBirthday.month) -
        weeks * 7;

    // Get the day of the week for the next birthday
    String dayOfWeek = _getDayOfWeekName(nextBirthday.weekday);

    // Construct the output string
    String output = '';
    if (months > 0) {
      output += '$months months ';
    }
    if (weeks > 0) {
      output += '$weeks weeks ';
    }
    if (days > 0) {
      output += '$days days ';
    }
    output += 'on $dayOfWeek';

    return output;
  }

  static String _getDayOfWeekName(int dayOfWeek) {
    const daysOfWeek = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    return daysOfWeek[dayOfWeek - 1];
  }
}
