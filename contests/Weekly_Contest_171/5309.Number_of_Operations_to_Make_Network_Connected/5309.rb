class DSU
  def initialize(n)
    @par = (0..(n - 1)).to_a
  end

  def find(x)
    return x if @par[x] == x

    @par[x] = find(@par[x])
    @par[x]
  end

  def union(x, y)
    x = find(x)
    y = find(y)

    @par[x] = y unless x == y
  end
end

# @param {Integer} n
# @param {Integer[][]} connections
# @return {Integer}
def make_connected(n, connections)
  dsu = DSU.new(n)
  spare = 0
  components = n

  connections.each do |conn|
    x, y = conn
    if dsu.find(x) == dsu.find(y)
      spare += 1
    else
      dsu.union(x, y)
      components -= 1
    end
  end


  if components == 1
    0
  elsif spare >= components - 1
    components - 1
  else
    -1
  end
end
