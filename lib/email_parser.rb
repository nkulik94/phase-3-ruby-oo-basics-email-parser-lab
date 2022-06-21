# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    attr_reader :addresses

    def initialize(addresses)
        @addresses = addresses
    end

    def parse
        newArr = @addresses.split(/[,\s]+/).uniq
        puts newArr
        newArr
    end
end

email_addresses = "nkulik@gmail.com, nkulik10@gmail.com"

parser = EmailAddressParser.new(email_addresses)

binding.pry
0