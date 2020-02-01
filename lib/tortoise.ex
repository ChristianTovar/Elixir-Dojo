defmodule Tortoise do
  def race(a, b, apart) do
    hours = apart / (b - a)
    minutes = (hours - trunc(hours)) * 60
    seconds = (minutes - trunc(minutes)) * 60
    times = [hours, minutes, seconds]
    for x <- times, do: trunc(x)
  end
end
