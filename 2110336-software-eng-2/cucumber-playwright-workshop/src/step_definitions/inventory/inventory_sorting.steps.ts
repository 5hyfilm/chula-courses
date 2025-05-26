import { Then, When, world } from "@cucumber/cucumber";
import { ICustomWorld } from "../../utils/custom_world";
import { expect } from "@playwright/test";

let customWorld: ICustomWorld = world;

When(
  "I select the {string} with value {string} sorting option",
  async (optionLabel: string, optionValue: string) => {
    const dropdownElement = customWorld.page?.locator(
      'select[data-test="product-sort-container"]'
    );

    expect(dropdownElement).not.toBeNull();
    if (dropdownElement) {
      await dropdownElement.selectOption({
        label: optionLabel,
        value: optionValue,
      });
    }
  }
);

Then(
  "the inventory items should be sorted in the correct order corresponding to {string}",
  async function (optionValue: string) {
    const inventoryItems = customWorld?.page?.locator(
      'div[class="inventory_item"]'
    );
    expect(inventoryItems).not.toBeNull();

    const count = (await inventoryItems?.count()) ?? 0;
    for (let i = 0; i < count - 1; i++) {
      const currentItem = inventoryItems?.nth(i);
      const nextItem = inventoryItems?.nth(i + 1);

      expect(currentItem).not.toBeNull();
      expect(nextItem).not.toBeNull();

      const itemPriceAttribute = '[class="inventory_item_price"]';

      // Current Item
      const currentItemPriceString = await currentItem
        ?.locator(itemPriceAttribute)
        .innerText();
      const currentItemPriceDouble = parseFloat(
        currentItemPriceString?.replaceAll("$", "") || ""
      );

      const nextItemPriceString = await nextItem
        ?.locator(itemPriceAttribute)
        .innerText();
      const nextItemPriceDouble = parseFloat(
        nextItemPriceString?.replaceAll("$", "") || ""
      );

      expect(currentItemPriceDouble).not.toBeNaN();
      expect(nextItemPriceDouble).not.toBeNaN();

      if (optionValue === "hilo") {
        expect(currentItemPriceDouble).toBeGreaterThanOrEqual(
          nextItemPriceDouble
        );
      }
    }
  }
);

Then(
  "I should see an error dialog with error message {string}",
  async function (expectedMessage: string) {
    const page = customWorld.page;
    if (!page) throw new Error("Page not found");

    // Setup dialog listener
    const dialogPromise = new Promise<void>((resolve, reject) => {
      page.once("dialog", async (dialog) => {
        try {
          expect(dialog.message()).toMatch(expectedMessage);
          await dialog.accept();
          resolve();
        } catch (error) {
          reject(error);
        }
      });
    });

    // Trigger dropdown selection (to possibly raise dialog)
    const dropdown = page.locator('[data-test="product-sort-container"]');
    await expect(dropdown).toBeVisible();

    const zaOption = dropdown.locator('option[value="za"]');
    const hasOption = await zaOption.count();
    expect(hasOption).toBeGreaterThan(0);

    await dropdown.selectOption("za");

    // Wait for dialog to be handled
    await dialogPromise;
  }
);
