class CalcController < ApplicationController

def index

end

def calculate

	@a = params[:a]
	@b = params[:b]
	@op = params[:op]
	res = calc(@a.to_f, @b.to_f, @op)

	render :plain => res, status: :ok


end

private
def
	calc(a, b, op)

	case op
		when "+"
			a + b
		when "-"
			a - b
		when "*"
			a * b
		when "/"
			a / b
	end

end


end
