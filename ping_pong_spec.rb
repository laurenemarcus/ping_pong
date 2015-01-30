require("ping_pong")
require("rspec")

describe("Fixnum#ping_pong") do
  it("returns an array of size equal to user input value") do
    expect(2.ping_pong()).to(eq([1, 2]))
  end

  it("replaces each 'divisible by 3' element with the string 'ping'") do
    expect(3.ping_pong()).to(eq([1, 2, "ping"]))
  end

  it("replaces each 'divisible by 5' element with the string 'pong'") do
    expect(5.ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
  end

  it("replace each 'divisible by 3 and 5' element with the string 'ping-pong'") do
    expect(15.ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong"]))
  end
end
