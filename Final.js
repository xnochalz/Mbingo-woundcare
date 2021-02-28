var Final = artifacts.require("./Final.sol");

contract("Final", function(accounts) {
	var woundinstance;

	it("initializes with one patient", function() {
		return Final.deployed().then(function(instance) {
			return instance.patientsCount();
		}).then(function(count) {
			assert.equal(count, 0);
		});
	});
	it("it initailizes the patients with the correct values", function() {
		return Final.deployed().then(function(instance) {
			woundinstance = instance;
			return woundinstance.patients(1);
		}).then(function(patient) {
			assert.equal(patient[0], "contains the correct name");
			assert.equal(patient[1], "WoundPatient 1", "contains the correct name");
			assert.equal(patient[2], "contains the correct visitCount");
			assert.equal(patient[3], "contains the correct DateofClinicVisit");
			assert.equal(patient[4], "contains the correct BMI");
			assert.equal(patient[5], "contains the correct pCount");
			assert.equal(patient[6], "contains the correct WoundView");
			assert.equal(patient[7], "contains the correct AnatomicLocation");
		});

});
})

 