require 'csv'
OPTIONS = {
  headers: true
}
class MembersController < ApplicationController
  def index
    @members = []
    CSV.foreach("/Users/keiko/workspace/practice/csv/tmp/members.csv", OPTIONS) do |m|
      @members << m.to_h
    end

    @members.each do |member|
      Member.create(firstname: member["firstname"],
                    familyname: member["familyname"],
                    email: member["email"])
    end
    # @members = members
    # members.each do |m|
    #   Member.create(id:)


    # member = members.first.to_h
    # @member = Member.create(id: member["id"],
    #               firstname: member["firstname"],
    #               familyname: member["familyname"],
    #               email: member["email"])
    
    console
  end
end
