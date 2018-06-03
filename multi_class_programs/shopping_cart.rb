#!/usr/bin/env ruby

class Cart


    def initialize
        @@cart =[]
    end
#getter/READER
    def show_cart
        return @@cart
    end
##setter/WRITER
    def add_product (product)
        @@cart << add_product
    end
    def remove_produc(product)
        @@cart.delete(product)
    end

end
