
class Patient {
  String name;
  int age;
  String gender;
  List<String> symptoms;

  Patient(this.name, this.age, this.gender, this.symptoms);
}
class Doctor {
  String name;
  String specialty;

  Doctor(this.name, this.specialty);

  void adviseTreatment(Patient patient) {
    print("$name, a $specialty, is advising ${patient.name}...");
    print("Based on the symptoms provided:");
    for (var symptom in patient.symptoms) {
      print("- $symptom");
    }
    print("Recommendations:");
    if (patient.symptoms.contains("Fever")) {
      print("- Take rest and stay hydrated.");
      print("- Take acetaminophen for fever.");
    }
    if (patient.symptoms.contains("Cough")) {
      print("- Use cough syrup as needed.");
      print("- Avoid exposure to irritants.");
    }
    if (patient.symptoms.contains("Sore throat")) {
      print("- Gargle with warm salt water.");
      print("- Use lozenges for relief.");
    }
    print("Treatment advice complete.");
  }
}
void main() {
  var patient = Patient("Sheheryar Ahmed", 21, "Male", ["Fever", "Cough","Sore throat"]);
  var doctor = Doctor("Dr Anas", "Pediatrician");
  doctor.adviseTreatment(patient);
}
