def __script__(src)
  code = []
  src = src.unpack("C*").map {|c| c.ord.to_s(6).rjust(3, "0").chars.to_a }
  src.flatten(1).map {|n| n.to_i(6) + 1 }.each do |n|
    code.empty? || code.last.size + n + 1 >= 60 ? code << "" : code.last << " "
    code.last << "_" * n
  end
  ([%q(require "_")] + code).join("\n")
end

$code, $fragment = [], []
def method_missing(mhd, *x)
  if x.empty?
    $code.concat($fragment.reverse)
    $fragment.clear
  end
  $fragment << (mhd.to_s.size - 1).to_s
end

at_exit do
  $code.concat($fragment.reverse)
  eval($code.join.scan(/.../).map {|c| c.to_i(6) }.pack("C*"))
end
