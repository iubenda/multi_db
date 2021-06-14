module MultiDb
  module ObserverExtensions
    # Send observed_method(object) if the method exists.
    def update(observed_method, object, *extra_args, &block) #:nodoc:
      if object.connection.respond_to?(:with_master)
        object.connection.with_master do
          super
        end
      else
        super
      end
    end
  end
end
