import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool isOn = false;

  var selected = 'flutter', sex = 'male', isChecked = false;
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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                maxLength: 20,
                controller: textController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'What is your name ?',
                ),
                onChanged: (value) {},
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Your Favorite Programming Language'),
                  const SizedBox(
                    width: 8,
                  ),
                  DropdownButton(
                    value: selected,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 20,
                    style: TextStyle(color: Colors.blue[500]),
                    underline: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 3),
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
              LayoutBuilder(builder: (context, constraints) {
                List<String> itemStringList = ['Female', 'Male'];

                return FormField(
                  initialValue: false,
                  enabled: true,
                  builder: (FormFieldState<bool> field) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Gender',
                        errorText: field.errorText,
                        helperText: 'Your Gender',
                      ),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                            isExpanded: true,
                            value: 'Female',
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.arrow_drop_up_outlined,
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
                              color:
                                  Theme.of(context).textTheme.bodyMedium!.color,
                            ),
                            underline: Container(
                              height: 0,
                              color: Colors.grey[300],
                            ),
                            items: itemStringList
                                .map<DropdownMenuItem<String>>((String value) {
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
              }),
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
              Row(
                children: [
                  const Text('Gender :'),
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
                  initialValue: '2024-01-01',
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
                    helperText: 'What is your birth date ?',
                  ),
                  onChanged: (value) {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
