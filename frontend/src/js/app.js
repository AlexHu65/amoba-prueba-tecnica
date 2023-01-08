import { createApp } from 'vue/dist/vue.esm-bundler';

const calendar = createApp({});

import CalendarComponent from './components/CalendarComponent.vue';

calendar.component('calendar-component', CalendarComponent);

calendar.mount('#calendar');