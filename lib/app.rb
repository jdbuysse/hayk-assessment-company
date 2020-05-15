
require 'pry'
require_relative "../config/environment.rb"


# Create a new company with a name and number of employees without saving
    # Save an instance and persist it to a database
    # Find a company by name
    # List all companies
    # Update a changed company and save it to a database
    # Delete a company

class Company

    attr_accessor :company_name, :number_of_employees

    def initialize company_name, number_of_employees, id=nil
        @id = id
        @company_name = company_name
        @number_of_employees = number_of_employees
    end

    def self.create_table
        sql = <<-SQL
          CREATE TABLE IF NOT EXISTS companies (
            id INTEGER PRIMARY KEY,
            company_name TEXT,
            number_of_employees INTEGER)
          SQL
        binding.pry
        # I'm hitting an error here saying DB is uninitialized
        # WHen I pry in environment, it successfully creates the table and it exists when I look in the database itself
        DB[:conn].execute(sql)
      end

    def self.drop_table
        sql = <<-SQL
          DROP TABLE IF EXISTS companies 
          SQL
        DB[:conn].execute(sql)
    end


end


binding.pry