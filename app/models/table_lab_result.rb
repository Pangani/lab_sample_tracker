class TableLabResult < ActiveRecord::Base
  self.table_name = "tblLabResults"

  def self.lab_results
    self.find(:all,:conditions =>["TestResult IS NOT NULL"])
  end
end
