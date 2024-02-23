<template>
  <ul>
    <li v-for="category in categories" :key="category.id">
      {{ category.name }} <span @click="editCategory(category.id)"><i class="bx bx-edit"></i></span>
      <TreeView :categories="category.children" v-if="category.children && category.children.length > 0" />
    </li>
  </ul>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import axios from "axios";
const categories = ref([]);

const router = useRouter();

const editCategory = (id) => {
  router.push({
    path: '/category/edit',
    query: { id }
  });
};

const fetchData = async () => {
  try {
    const response = axios.get('/category/getCategoryList');
    categories.value = response.data;
  } catch (error) {
    console.error(error);
  }
};

onMounted(fetchData);
</script>
