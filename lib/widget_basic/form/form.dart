import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool isOn = false;

  var selected = 'Flutter', sex = 'male', isChecked = false;
  final dropdownList = <String>[
    'Flutter',
    'Dart',
    'Java',
    'JavaScript',
    'Python'
  ];
  TextEditingController textController = TextEditingController(text: 'Rifaldi');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget - Form'),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                maxLength: 20,
                controller: textController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Fill Your Name',
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  debugPrint('pickedDate : $pickedDate');
                },
                child: TextFormField(
                  initialValue: '2001-01-01',
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Birth Date',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    suffixIcon: Icon(Icons.date_range),
                    helperText: 'Select Your Birth Date',
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  List<String> itemStringList = ['Male', 'Female'];

                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Gender Dropdown Version',
                          errorText: field.errorText,
                          helperText: 'Select Your Gender',
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: 'Male',
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 24,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                ),
                              ),
                              iconSize: 16,
                              elevation: 16,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                              ),
                              underline: Container(
                                height: 0,
                                color: Colors.grey[300],
                              ),
                              items: itemStringList
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(value),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {},
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text(
                    'Gender Radio Version',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 'male',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(
                            () {
                              if (val != null) {
                                sex = val;
                              }
                            },
                          );
                        },
                      ),
                      const Text('Male'),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 'female',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(
                            () {
                              if (val != null) {
                                sex = val;
                              }
                            },
                          );
                        },
                      ),
                      const Text('Female'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Favorite Programming Language :'),
                  const SizedBox(
                    width: 12,
                  ),
                  DropdownButton(
                    value: selected,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 20,
                    style: TextStyle(color: Colors.blue[600]),
                    underline: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    items: dropdownList
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) selected = val;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text('Connect Instagram'),
                  const SizedBox(
                    width: 8,
                  ),
                  Switch(
                    value: isOn,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          isOn = val;
                        });
                      }
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      setState(() {
                        if (val != null) {
                          isChecked = val;
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Agree Term & Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
