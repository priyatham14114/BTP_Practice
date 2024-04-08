
function _get_full_city(city) {
    if (city === "kkd"){
    const city_name = "kakinada";
    return city_name;
    } }

const onBefore = async (req) => {
var {city} = req.data
var _city = _get_full_city(city)
req.data.city = _city;
    console.log("Hey i'm Before Event")
}

// _add_str = ()=>{
// if(true){
//     const Door_number = `Door Number-${req.door_num}`
//     return Door_number
// }
// }

const onAfter = async (req) => {
    // var {door_num} = req.data
    // var _door = _add_str(door_num)
    // req.data.door_num = _door
    req.data= `door number-${req.door_num}`
    console.log("Hey i'm After Event")
}

module.exports = {
    onBefore,
    onAfter
}
