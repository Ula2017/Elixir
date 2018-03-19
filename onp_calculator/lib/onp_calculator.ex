defmodule OnpCalculator do
  @moduledoc """
  Documentation for OnpCalculator.
  """

  @doc """
  Hello world.

  ## Examples

      iex> OnpCalculator.hello
      :world

  """
  def hello do
    :world
  end

   def onp([],[r]) do r end
   def onp([a|list],[l1,l2|l]) when (a=="+") do onp(list,[(l1+l2)|l])end
   def onp([a|list],[l1,l2|l]) when (a=="-") do onp(list,[(l2-l1)|l])end
   def onp([a|list],[l1,l2|l]) when (a=="*") do onp(list,[(l1*l2)|l])end
   def onp([a|list],[l1,l2|l]) when (a=="/") do onp(list,[(l2 / l1)|l])end
   def onp([a|list],[]) do onp(list,[a]) end
   def onp([a|list],[l | rest]) do onp(list,[a]++[l|rest])end

end
