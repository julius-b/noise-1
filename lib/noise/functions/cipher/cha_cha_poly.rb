# frozen_string_literal: true

module Noise
  module Functions
    module Cipher
      class ChaChaPoly
        def encrypt(k, n, ad, plaintext)
          @cipher ||= RbNaCl::AEAD::ChaCha20Poly1305IETF.new(k)
          @cipher.encrypt(n, plaintext, ad)
        end

        def decrypt(k, n, ad, ciphertext)
          @cipher ||= RbNaCl::AEAD::ChaCha20Poly1305IETF.new(k)
          @cipher.decrypt(n, ciphertext, ad)
        end
      end
    end
  end
end
