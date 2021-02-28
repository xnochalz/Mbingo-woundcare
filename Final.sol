pragma solidity >=0.5.0 <0.6.0;
/**
 * The wounds contract does this and that...
 */
contract Final {

	//model our patient
	struct Patient {
			uint id;
			string name;
			uint MRN;
			uint Birthday;
			string Sex;
			uint Phone;
			string Division;
			string Country;	

	}

	//store patients
	//fetch patients
	mapping(uint => Patient) public patients;
	//store patient count
	//patientsCount displays the number of patients in the Patient mapping
	//which is assigned the variable patients
	uint public patientsCount;

	//@dev calls the addPatient function each time a patient is created

	function Wound(string memory _name, uint _MRN, uint _Birthday, string memory _Sex, uint _Phone, string memory _Division, string memory _Country) public {
		addPatient(_name, _MRN, _Birthday, _Sex, _Phone, _Division, _Country);
	
	}
//add a patient to the mapping
//store multiple candidates
//store track of how many times they have been viewed
//reference candidates  by id
//@dev local variables are prepended with the _ i.e the underscore
//@dev is a private fxn bc we dont want it accescible to every fxn in the contract
//@dev creates new patient
function addPatient(string memory _name, uint _MRN, uint _Birthday, string memory _Sex, uint _Phone, string memory _Division, string memory _Country) private {
	patientsCount++;
	patients[patientsCount] = Patient(patientsCount, _name, _MRN, _Birthday, _Sex, _Phone, _Division, _Country );


}
 
}
