# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#healthdata = YAML.load(File.open(File.join(Rails.root, "config/database.yml"), "r"))['doctorzii_website']
healthdata = YAML.load(File.open(File.join(Rails.root, "config/database.yml"), "r"))['healthdata']
Lab.establish_connection(healthdata)
LabTestType.establish_connection(healthdata)
LabTestTable.establish_connection(healthdata)
LabPanel.establish_connection(healthdata)
LabParameter.establish_connection(healthdata)
TableLabResultList.establish_connection(healthdata)
TableLabResult.establish_connection(healthdata)
LabSample.establish_connection(healthdata)
Clinician.establish_connection(healthdata)
