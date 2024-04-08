const cds = require("@sap/cds");
const {
    onBefore,
    onAfter } = require("./Operations/employee_Operations");

module.exports = cds.service.impl(async (service) => {
    service.before("CREATE", "address", onBefore)
    service.after("GET", "address", onAfter)


});