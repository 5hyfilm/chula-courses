import { Given, When, Then, world } from "@cucumber/cucumber";
import { ICustomWorld } from "../../utils/custom_world";
import { expect } from "@playwright/test";

let customWorld: ICustomWorld = world;

Given(
  "I log in to the inventory page with username {string} and password {string}",
  async function (username: string, password: string) {
    const page = customWorld.page;

    if (page) {
      await page.goto("/");
      await page.waitForLoadState("domcontentloaded");

      await page.getByPlaceholder("Username").fill(username);
      await page.getByPlaceholder("Password").fill(password);
      await page
        .getByRole("button", {
          name: "Login",
        })
        .click();
    }
  }
);

// เพิ่มสินค้าเข้าไปในตะกร้าตามจำนวนที่กำหนด
When(
  "I add the first {int} items to the cart",
  async function (itemCount: number) {
    const page = customWorld.page;
    if (!page) throw new Error("Page is not available");

    const allItems = page.locator(".inventory_item");
    const total = await allItems.count();

    expect(total).toBeGreaterThanOrEqual(itemCount);

    for (let index = 0; index < itemCount; index++) {
      const product = allItems.nth(index);
      const addToCartBtn = product
        .locator("button")
        .filter({ hasText: "Add to cart" });
      await addToCartBtn.click();
    }
  }
);

When(
  "I remove {int} items from the cart, starting with the first item displayed",
  async function (removeCount: number) {
    const page = customWorld.page;
    if (!page) throw new Error("Page is not available");

    await page.click(".shopping_cart_link");

    const cartItems = page.locator(".cart_item");
    const total = await cartItems.count();

    expect(total).toBeGreaterThanOrEqual(removeCount);

    for (let i = 0; i < removeCount; i++) {
      await cartItems.first().locator("button", { hasText: "Remove" }).click();
    }
  }
);

Then("I should see {int} items in the cart", async function (expected: number) {
  const badge = customWorld.page?.locator('[data-test="shopping-cart-badge"]');
  if (!badge) throw new Error("Badge locator is undefined");

  if (expected === 0) {
    await expect(badge).toHaveCount(0);
  } else {
    await expect(badge).toHaveText(expected.toString());
  }
});

Then(
  "I should see a {string} button for the remaining items",
  async function (label: string) {
    const page = customWorld.page;
    if (!page) throw new Error("Page is not available");

    const buttons = page.locator("button").filter({ hasText: label });
    const count = await buttons.count();
    expect(count).toBeGreaterThan(0);
  }
);
