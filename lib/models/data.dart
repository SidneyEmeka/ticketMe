//A Bus in a terminal
class aBus {
  final String title;
  final String type;
  final int app;
  final int terminal;
  final String takeOff;

  aBus(
      {required this.title,
      required this.type,
      required this.app,
      required this.terminal,
      required this.takeOff});
}
//A users data
class Ekene {
  static List<String> dropDownStates = ["Enugu", "Lagos", "Onitsha", "Aba", "Abuja", "Owerri"];
  //Tickets data[json]
  static List<Map<String, dynamic>> tickets = [
    {
      'status': "active",
      'from': {'code': "ENU", 'name': "Enugu"},
      'to': {'code': "ABJ", 'name': "Abuja"},
      'duration': '4H 30M',
      'date': "11 NOV",
      'departure_time': "08:00 AM",
      "seat": 23
    },
    {
      'status': "active",
      'from': {'code': "LAG", 'name': "Lagos"},
      'to': {'code': "ENU", 'name': "Enugu"},
      'duration': '6H 20M',
      'date': "13 NOV",
      'departure_time': "09:00 AM",
      "seat": 45
    },
    {
      'status': "active",
      'from': {'code': "ABA", 'name': "Abia"},
      'to': {'code': "ENU", 'name': "Enugu"},
      'duration': '2H 30M',
      'date': "11 MAR",
      'departure_time': "08:00 AM",
      "seat": 23
    },
    {
      'status': "expired",
      'from': {'code': "ENU", 'name': "Enugu"},
      'to': {'code': "DEL", 'name': "Delta"},
      'duration': '6H 20M',
      'date': "1 MAY",
      'departure_time': "09:00 AM",
      "seat": 45
    },
  ];

  //A State's fleet
  static List<dynamic> enugu = [
    //route,title,app,terminal,takeoff
    aBus(
        title: "Enugu - Onitsha",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:00 AM"),
    aBus(
        title: "Enugu - Lagos",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "9:00 PM"),
    aBus(
        title: "Enugu - Abuja",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "10:00 AM"),
    aBus(
        title: "Enugu - Aba",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:30 AM"),
    aBus(
        title: "Enugu - Owerri",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "5:00 PM"),
  ];
  static List<dynamic> lagos = [
    //route,title,app,terminal,takeoff
    aBus(
        title: "Lagos - Onitsha",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:00 AM"),
    aBus(
        title: "Lagos - Enugu",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "10:00 AM"),
    aBus(
        title: "Lagos - Abuja",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:30 AM"),
    aBus(
        title: "Lagos - Aba",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:10 PM"),
    aBus(
        title: "Lagos - Owerri",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "5:00 PM")
  ];
  static List<dynamic> onitsha = [
    //route,title,app,terminal,takeoff
    aBus(
        title: "Onitsha - Abuja",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:00 AM"),
    aBus(
        title: "Onitsha - Lagos",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "10:00 AM"),
    aBus(
        title: "Onitsha - Enugu",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:30 AM"),
    aBus(
        title: "Onitsha - Aba",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "11:30 AM"),
    aBus(
        title: "Onitsha - Owerri",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "5:00 PM")
  ];
  static List<dynamic> aba = [
    //route,title,app,terminal,takeoff
    aBus(
        title: "Aba - Onitsha",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:00 AM"),
    aBus(
        title: "Aba - Lagos",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "10:00 AM"),
    aBus(
        title: "Aba - Enugu",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:30 AM"),
    aBus(
        title: "Aba - Abuja",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "11:30 AM"),
    aBus(
        title: "Aba - Owerri",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "5:00 PM")
  ];
  static List<dynamic> abuja = [
    //route,title,app,terminal,takeoff
    aBus(
        title: "Abuja - Onitsha",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:00 AM"),
    aBus(
        title: "Abuja - Lagos",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "10:00 AM"),
    aBus(
        title: "Abuja - Enugu",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:30 AM"),
    aBus(
        title: "Abuja - Aba",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "11:30 AM"),
    aBus(
        title: "Abuja - Owerri",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "5:00 PM")
  ];
  static List<dynamic> owerri = [
    //route,title,app,terminal,takeoff
    aBus(
        title: "Owerri - Onitsha",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:00 AM"),
    aBus(
        title: "Owerri - Lagos",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "10:00 AM"),
    aBus(
        title: "Owerri - Enugu",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "6:30 AM"),
    aBus(
        title: "Owerri - Aba",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "11:30 AM"),
    aBus(
        title: "Owerri - Abuja",
        type: "AC bus",
        app: 7200,
        terminal: 7500,
        takeOff: "5:00 PM")
  ];

//Entire Fleet
  static Map<String, List> fleet = {
    "Enugu": enugu,
    "Lagos": lagos,
    "Onitsha": onitsha,
    "Aba": aba,
    "Abuja": abuja,
    "Owerri": owerri,
  };
}
