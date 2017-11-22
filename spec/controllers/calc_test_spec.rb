require 'rails_helper'

RSpec.describe CalcController, :type => :controller do
  describe "POST calculate" do
    it "calc minus" do
      post :calculate, params: { a: 1, b: 2, op:'-' }
      expect(response).to have_http_status (:ok)
    end
  end

  describe "calculate" do
    it "calc plus" do
      @calc = CalcController.new
      expect(@calc.instance_eval{ calc(1,2,'+') }).to eq 3 # check the value of the instance variable
    end
    it "calc minus" do
      @calc = CalcController.new
      expect(@calc.instance_eval{ calc(1,2,'-') }).to eq -1 # check the value of the instance variable
    end
    it "calc mult" do
      @calc = CalcController.new
      expect(@calc.instance_eval{ calc(1,2,'*') }).to eq 2 # check the value of the instance variable
    end
    it "calc div" do
      @calc = CalcController.new
      expect(@calc.instance_eval{ calc(4,2,'/') }).to eq 2 # check the value of the instance variable
    end
  end
end