shirts = %w[Stripped plain_white plaid band]
ties = %w[polkadot solidcolor boring]
pairing = []
shirts.each do |shirt|

    ties.each do |tie|

    pairing << shirt << tie

    end

end

puts pairing
