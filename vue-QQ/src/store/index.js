import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const state={
    url:"http://10.3.146.214:1811/api/api.php"

}
const store = new Vuex.Store({
    state
});
 
export default store;