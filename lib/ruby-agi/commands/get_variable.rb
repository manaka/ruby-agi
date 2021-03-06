
module AGI
  #
  # method to read a variable
  #
  # <b>Parameters</b>
  # - name	: name of the variable to read
  #
  # <b>Returns</b>
  # - ReturnStatus object
  #
  # Does not work with global variables. Does not work with some variables that are generated by modules.
  # failure or not set: 200 result=0
  # success: 200 result=1 <value>
  # Command Reference: GET VARIABLE <variablename>
  #  

  #
  # Usage: GET VARIABLE <variablename>
  # Returns 0 if <variablename> is not set.
  # Returns 1 if <variablename> is set and returns the variable in parentheses.
  # example return code: 200 result=1 (testvariable)  
  #
  def self.get_variable(name)
    self.logger :info, "AGI::get_variable"
    cmd = "GET VARIABLE #{name.to_s}"
    rs = self.exec_command(cmd, GetVariable)
    #self.logger :info, rs.success?
    
    rs
  end
end
