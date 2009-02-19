module FromHash
  def from_hash(ops)
    ops.each do |k,v|
      send("#{k}=",v)
    end
  end
  def initialize(ops={})
    from_hash(ops)
  end
end

class Class
  def store_method(a,b,&blk)
    fattr(a,&blk)
  end
end