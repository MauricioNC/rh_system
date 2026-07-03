import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="employment-form"
export default class extends Controller {
  static targets = [ "rfc", "name", "curp", "fatherLastName", "motherLastName", "address", "birthDate", "gender", "maritalStatus", "nationality" ]
  
  connect() {
  }

  async fetch_employee() {
    const rfc = this.rfcTarget.value
    
    if (!rfc) return
    
    const response = await fetch(`/employees/find_by_rfc?rfc=${encodeURIComponent(rfc)}`)

    if (!response.ok) {
      console.log("Empleado no encontrado")
      return
    }

    const employee = await response.json()
    this.preload_employee_info(employee)
  }

  preload_employee_info(employee) {
    this.nameTarget.value = employee.name
    this.curpTarget.value = employee.curp
    this.fatherLastNameTarget.value = employee.father_last_name
    this.motherLastNameTarget.value = employee.mother_last_name
    this.addressTarget.value = employee.address
    this.birthDateTarget.value = employee.birth_date
    this.genderTarget.value = employee.gender
    this.maritalStatusTarget.value = employee.marital_status
    this.nationalityTarget.value = employee.nationality
  }
}
