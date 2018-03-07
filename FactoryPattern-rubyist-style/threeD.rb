module ThreeD
  def self.extended(mod)
    mod.type << :ThreeD
    case mod.type.first
    when :Triangle
      mod.instance_eval do
        def draw(depth)
          puts "drawing a Wedge"
        end
      end
    when :Square
      mod.instance_eval do
        def draw(depth)
          puts "drawing a Box"
        end
      end
    end
  end
end