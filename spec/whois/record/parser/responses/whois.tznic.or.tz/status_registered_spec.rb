# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tznic.or.tz/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.tznic.or.tz.rb'

describe Whois::Record::Parser::WhoisTznicOrTz, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.tznic.or.tz/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#domain" do
    it do
      @parser.domain.should == "dailynews.co.tz"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2009-07-27 11:01:10")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2010-08-30 15:47:56")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2012-07-27")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(Whois::Record::Registrar)
      @parser.registrar.id.should           == "REG-TZNIC"
      @parser.registrar.name.should         == "REG-TZNIC"
      @parser.registrar.organization.should == nil
      @parser.registrar.url.should          == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "CM7-TZNIC"
      @parser.registrant_contacts[0].name.should          == "Collins Mtita"
      @parser.registrant_contacts[0].organization.should  == "TSN"
      @parser.registrant_contacts[0].address.should       == "Dar_es_salaam\nDar_es_salaam\nP.O.BOX 9033\nTZ"
      @parser.registrant_contacts[0].city.should          == nil
      @parser.registrant_contacts[0].zip.should           == nil
      @parser.registrant_contacts[0].state.should         == nil
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == nil
      @parser.registrant_contacts[0].phone.should         == nil
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == "mcollins@dailynews.co.tz"
      @parser.registrant_contacts[0].created_on.should    == Time.parse("2010-08-30 15:46:35")
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == "CM7-TZNIC"
      @parser.admin_contacts[0].name.should          == "Collins Mtita"
      @parser.admin_contacts[0].organization.should  == "TSN"
      @parser.admin_contacts[0].address.should       == "Dar_es_salaam\nDar_es_salaam\nP.O.BOX 9033\nTZ"
      @parser.admin_contacts[0].city.should          == nil
      @parser.admin_contacts[0].zip.should           == nil
      @parser.admin_contacts[0].state.should         == nil
      @parser.admin_contacts[0].country.should       == nil
      @parser.admin_contacts[0].country_code.should  == nil
      @parser.admin_contacts[0].phone.should         == nil
      @parser.admin_contacts[0].fax.should           == nil
      @parser.admin_contacts[0].email.should         == "mcollins@dailynews.co.tz"
      @parser.admin_contacts[0].created_on.should    == Time.parse("2010-08-30 15:46:35")
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == "JN1-TZNIC"
      @parser.technical_contacts[0].name.should          == "Jacob Noel"
      @parser.technical_contacts[0].organization.should  == "Twiga Hosting"
      @parser.technical_contacts[0].address.should       == "Dar es Salaam\nDar es Salaam\nP.O.Box\nTZ"
      @parser.technical_contacts[0].city.should          == nil
      @parser.technical_contacts[0].zip.should           == nil
      @parser.technical_contacts[0].state.should         == nil
      @parser.technical_contacts[0].country.should       == nil
      @parser.technical_contacts[0].country_code.should  == nil
      @parser.technical_contacts[0].phone.should         == "+255.755763951"
      @parser.technical_contacts[0].fax.should           == nil
      @parser.technical_contacts[0].email.should         == "jacobn@twigaonline.com"
      @parser.technical_contacts[0].created_on.should    == Time.parse("2009-08-24 06:21:51")
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[0].name.should == "ns1.twigaservers.com"
      @parser.nameservers[1].should be_a(Whois::Record::Nameserver)
      @parser.nameservers[1].name.should == "ns2.twigaservers.com"
    end
  end
end
