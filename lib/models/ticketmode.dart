class Ekene {
  List<Map<String, dynamic>> tickets = [
    {
      'status': "active",
      'from': {
        'code':"ENU",
        'name':"Enugu"
      },
      'to': {
        'code':"ABJ",
        'name':"Abuja"
      },
      'flying_time': '4H 30M',
      'date': "11 NOV",
      'departure_time':"08:00 AM",
      "seat":23
    },
    {
      'status': "active",
      'from': {
        'code':"ENU",
        'name':"Enugu"
      },
      'to': {
        'code':"LAG",
        'name':"Lagos"
      },
      'flying_time': '6H 20M',
      'date': "10 MAY",
      'departure_time':"09:00 AM",
      "seat":45
    },
    {
      'status': "expired",
      'from': {
        'code':"ABA",
        'name':"Abia"
      },
      'to': {
        'code':"ENU",
        'name':"Enugu"
      },
      'flying_time': '2H 30M',
      'date': "11 MAR",
      'departure_time':"08:00 AM",
      "seat":23
    },
    {
      'status': "expired",
      'from': {
        'code':"ENU",
        'name':"Enugu"
      },
      'to': {
        'code':"DEL",
        'name':"Delta"
      },
      'flying_time': '6H 20M',
      'date': "1 MAY",
      'departure_time':"09:00 AM",
      "seat":45
    },
  ];
}