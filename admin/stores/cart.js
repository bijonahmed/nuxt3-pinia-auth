import { defineStore } from "pinia";
import { useProductStore as productStore } from "./product";

export const useCartStore = defineStore("cart", {
  state: () => ({
    cartContent: {},
  }),
  getters: {
    formattedCart() {
      const productsArray = productStore().products;
      if (Array.isArray(productsArray)) {
        return Object.keys(this.$state.cartContent).map((productID) => {
          const product = this.$state.cartContent[productID];
          const foundProduct = productsArray.find(
            (p) => p.id === product.productID
          );

          if (foundProduct) {
            return {
              id: product.productID,
              image: foundProduct.thumbnail,
              name: foundProduct.title,
              price: foundProduct.price,
              quantity: product.quantity,
              cost: product.quantity * foundProduct.price,
            };
          } else {
            console.error(
              // `Product with ID ${product.productID} not found in productStore().products`
              `Product not found`
            );
            return null; // You can handle the case when the product is not found
          }
        });
      } else {
        //console.error("productStore().products is not an array");
        console.error("Products is not an array");
        return []; // Return an empty array or handle this case based on your requirements
      }
    },

    totalCartPrice() {
      return Object.keys(this.$state.cartContent).reduce((acc, id) => {
        //const product = productStore().products.data.find((p) => p.id == id);
        const productsArray = productStore().products;
        if (Array.isArray(productsArray)) {
          const product = productsArray.find((p) => p.id == id);
          if (product) {
            return acc + product.price * this.$state.cartContent[id].quantity;
          }
        }
        return acc + 0;
      }, 0);
    },
    cartTotalItem() {
      return Object.keys(this.$state.cartContent).reduce((acc, id) => {
        return acc + this.$state.cartContent[id].quantity;
      }, 0);
    },
  },
  actions: {
    async addToCart(productID) {
      if (this.$state.cartContent.hasOwnProperty(productID)) {
        this.$state.cartContent[productID] = {
          productID,
          quantity: this.$state.cartContent[productID].quantity + 1,
        };
      } else {
        this.$state.cartContent[productID] = {
          productID,
          quantity: 1,
        };
      }
    },
    deleteProduct(productID) {
      if (this.$state.cartContent.hasOwnProperty(productID)) {
        delete this.$state.cartContent[productID]; // Remove the product from the cart
      }
    },
    clearCart() {
      this.cartContent = {}; // Clear the cart content
    },
  },
  clearCart() {
    this.$state.cartContent = {}; // Clear the cart content
  },
  persist: true,
});
