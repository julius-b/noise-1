module Noise
  module Functions
    module DH
      class DH25519
        DHLEN = 32
        def generate_keypair
          throw NotImplementedError
        end

        def dh(key_pair, public_key)
          throw NotImplementedError
        end

        def dhlen
          DHLEN
        end
      end
    end
  end
end