# mantle/client.cr

module Mantle
  # Record is a macro that expands to define struct with initializer, getters and a copy_with and clone helper methods.
  # Reminder that it's positional, not named arguments
  record ModelConfig, model_name : String, stream : Bool, temperature : Float64, top_p : Float64, max_tokens : Int32, api_url : String

  # Contract for Client class. Using a contract to simplify unit testing.
  abstract class Client
    abstract def execute(prompt : String) : String
  end
end
