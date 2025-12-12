import { Cl, ClarityType } from "@stacks/transactions";
import { describe, expect, it } from "vitest";

const accounts = simnet.getAccounts();
const deployer = accounts.get("deployer")!;

describe("Counter contract tests", () => {
  it("counter starts at 0", () => {
    const counterValue = simnet.getDataVar("counter", "counter");
    expect(counterValue).toBeUint(0);
  });

  it("increment increases counter by 1", () => {
    const result = simnet.callPublicFn("counter", "increment", [], deployer);
    expect(result.result).toBeOk(Cl.bool(true));

    const counterValue = simnet.getDataVar("counter", "counter");
    expect(counterValue).toBeUint(1);
  });

  it("increment and decrement returns to 0", () => {
    // First increment
    simnet.callPublicFn("counter", "increment", [], deployer);
    // Then decrement
    const result = simnet.callPublicFn("counter", "decrement", [], deployer);
    expect(result.result).toBeOk(Cl.bool(true));

    const counterValue = simnet.getDataVar("counter", "counter");
    expect(counterValue).toBeUint(0);
  });

  it("decrement fails when counter is 0", () => {
    const result = simnet.callPublicFn("counter", "decrement", [], deployer);
    expect(result.result).toBeErr(Cl.uint(1));
  });
});