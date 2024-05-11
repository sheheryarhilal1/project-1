
class Patient {
  String name;
  int age;
  String gender;
  List<String> symptoms;

  Patient(this.name, this.age, this.gender, this.symptoms);

  void receiveTreatment() {
    if (symptoms.contains("Fever")) {
      symptoms.remove("Fever");
    }
    if (symptoms.contains("Cough")) {
      symptoms.remove("Cough");
    }
    print("$name received treatment. Current symptoms: ${symptoms.join(', ')}");
  }

  void updateDoctor(Doctor doctor, List<String> newSymptoms) {
    print("$name is providing an update to ${doctor.name}...");
    print("Previous symptoms: ${symptoms.join(', ')}");
    print("New symptoms: ${newSymptoms.join(', ')}");
    symptoms.addAll(newSymptoms);
    print("Update provided successfully.");
    doctor.updateReceived(this);
  }
}
class Doctor {
  String name;
  String specialty;

  Doctor(this.name, this.specialty);

  void updateReceived(Patient patient) {
    print("$name, a $specialty, has received an update from ${patient.name}.");
    print("Current symptoms: ${patient.symptoms.join(', ')}");
    print("Thank you for the update, ${patient.name}.");
  }
}

void main() {
  var patient = Patient("Sheheryar Ahmed", 21, "Male", ["Fever", "Cough","sore throat"]);
  var doctor = Doctor("Dr Saad", "General Physician");
  patient.receiveTreatment();
  patient.updateDoctor(doctor, ["Sore Throat", "Fatigue"]);
}
