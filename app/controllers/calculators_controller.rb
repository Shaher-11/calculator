# frozen_string_literal: true

class CalculatorsController < ApplicationController
  def calculate
    a, b, operation = params.values
    a = a.to_i
    b = b.to_i
    result = case operation
             when 'SUM' then    a + b
             when 'TIMES' then  a * b
             when 'DEVIDE' then a / b
             when 'SUB' then    a - b
             else
               "Error: Operation has an invalid value (#{operation})"
             end

    render json: {
      "result": result
    }
  end
end
