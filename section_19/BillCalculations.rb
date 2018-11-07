module BillCalculations

    def self.bill(items)
        items.reduce(0) { |num, sum| sum + num }
    end

    def self.vat(bill)
        bill * 0.16
    end

end
