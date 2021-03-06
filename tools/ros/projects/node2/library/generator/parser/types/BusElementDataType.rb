
class BusElementDataType
    @@objs = Array.new()
    attr_accessor :name
    attr_accessor :dataElmType
    attr_accessor :initialValue

    def initialize(name, dataElmTypeRef, initialValue)
        self.name = name
        self.initialValue = initialValue

        elmName = dataElmTypeRef.split("/")[0]
        type = dataElmTypeRef.split("/")[1]
        if elmName == "DataElementArrayType"
            self.dataElmType = DataElementArrayType.get(type)
        else
            #p "BusElementDataType:" + type
            self.dataElmType = DataElementSingleType.get(type)
        end
        #p "BusElementDataType:" + self.dataElmType.name

        BusElementDataType.register(self)
    end

    def self.add(name, dataElmTypeRef, initialValue)
        BusElementDataType.new(name, dataElmTypeRef, initialValue)
    end

    def self.register(obj)
        @@objs.push(obj)
    end

    def self.get(name)
        for elm in @@objs do
            if elm.name == name then
                return elm
            end
        end
        p "ERROR: BusElementDataType(" + name + ") is not found!"
        return nil
    end    
end