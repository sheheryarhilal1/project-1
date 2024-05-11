
class Patient {
  String name;
  int age;
  String gender;
  List<String> medicalReports;

  Patient(this.name, this.age, this.gender, this.medicalReports);

  void addMedicalReport(String report) {
    medicalReports.add(report);
  }

  void displayMedicalHistory() {
    print("Medical History for $name:");
    for (var report in medicalReports) {
      print("- $report");
    }
  }
}
class Doctor {
  String name;
  String specialty;

  Doctor(this.name, this.specialty);

  void observePatient(Patient patient) {
    print("$name, a $specialty, is observing ${patient.name}...");
    patient.displayMedicalHistory();
    print("Observation complete.");
  }
}
void main() {
  var patient = Patient("sheheryar AHmed",21, "Male", []);
  patient.addMedicalReport("Fever, cough, and sore throat");
  patient.addMedicalReport("Blood pressure is high");
  var doctor = Doctor("Dr Waqar", "Cardiologist");
  doctor.observePatient(patient);
}
