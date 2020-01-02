# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  b = 0

  until is_bad_version(b)
    p = b + (n - b) / 2
    if is_bad_version(p)
      n = p
    else
      b = p + 1
    end
  end

  b
end
