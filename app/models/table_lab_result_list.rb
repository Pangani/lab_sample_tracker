class TableLabResultList < ActiveRecord::Base
  self.table_name = "tblLabTestList"

  def self.test_type(test_id)
    self.find(:first,:conditions =>["LabTestID=?",test_id]).TestType rescue nil
  end

end
