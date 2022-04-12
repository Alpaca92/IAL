"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
(() => {
var exports = {};
exports.id = "pages/api/test";
exports.ids = ["pages/api/test"];
exports.modules = {

/***/ "@prisma/client":
/*!*********************************!*\
  !*** external "@prisma/client" ***!
  \*********************************/
/***/ ((module) => {

module.exports = require("@prisma/client");

/***/ }),

/***/ "(api)/./libs/client.ts":
/*!************************!*\
  !*** ./libs/client.ts ***!
  \************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (__WEBPACK_DEFAULT_EXPORT__)\n/* harmony export */ });\n/* harmony import */ var _prisma_client__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @prisma/client */ \"@prisma/client\");\n/* harmony import */ var _prisma_client__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_prisma_client__WEBPACK_IMPORTED_MODULE_0__);\n\n/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (new _prisma_client__WEBPACK_IMPORTED_MODULE_0__.PrismaClient());\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwaSkvLi9saWJzL2NsaWVudC50cy5qcyIsIm1hcHBpbmdzIjoiOzs7Ozs7QUFBNkM7QUFFN0MsaUVBQWUsR0FBRyxDQUFDQSx3REFBWSxFQUFFLEVBQUMiLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9jYXJyb3QtY2xvbmUvLi9saWJzL2NsaWVudC50cz80YmE1Il0sInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IFByaXNtYUNsaWVudCB9IGZyb20gXCJAcHJpc21hL2NsaWVudFwiO1xuXG5leHBvcnQgZGVmYXVsdCBuZXcgUHJpc21hQ2xpZW50KCk7XG4iXSwibmFtZXMiOlsiUHJpc21hQ2xpZW50Il0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///(api)/./libs/client.ts\n");

/***/ }),

/***/ "(api)/./pages/api/test.tsx":
/*!****************************!*\
  !*** ./pages/api/test.tsx ***!
  \****************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ test)\n/* harmony export */ });\n/* harmony import */ var _libs_client__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../libs/client */ \"(api)/./libs/client.ts\");\n\nasync function test(req, res) {\n    await _libs_client__WEBPACK_IMPORTED_MODULE_0__[\"default\"].user.create({\n        data: {\n            name: \"some name\"\n        }\n    });\n    res.json({\n        ok: true\n    });\n};\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwaSkvLi9wYWdlcy9hcGkvdGVzdC50c3guanMiLCJtYXBwaW5ncyI6Ijs7Ozs7QUFDc0M7QUFFdkIsZUFBZUMsSUFBSSxDQUFDQyxHQUFtQixFQUFFQyxHQUFvQixFQUFFLENBQUM7SUFDN0UsS0FBSyxDQUFDSCxnRUFBa0IsQ0FBQyxDQUFDO1FBQ3hCTSxJQUFJLEVBQUUsQ0FBQztZQUFDQyxJQUFJLEVBQUUsQ0FBVztRQUFDLENBQUM7SUFDN0IsQ0FBQztJQUVESixHQUFHLENBQUNLLElBQUksQ0FBQyxDQUFDO1FBQUNDLEVBQUUsRUFBRSxJQUFJO0lBQUMsQ0FBQztBQUN2QixDQUFDIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vY2Fycm90LWNsb25lLy4vcGFnZXMvYXBpL3Rlc3QudHN4PzI1NmUiXSwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgTmV4dEFwaVJlcXVlc3QsIE5leHRBcGlSZXNwb25zZSB9IGZyb20gXCJuZXh0XCI7XG5pbXBvcnQgY2xpZW50IGZyb20gXCIuLi8uLi9saWJzL2NsaWVudFwiO1xuXG5leHBvcnQgZGVmYXVsdCBhc3luYyBmdW5jdGlvbiB0ZXN0KHJlcTogTmV4dEFwaVJlcXVlc3QsIHJlczogTmV4dEFwaVJlc3BvbnNlKSB7XG4gIGF3YWl0IGNsaWVudC51c2VyLmNyZWF0ZSh7XG4gICAgZGF0YTogeyBuYW1lOiBcInNvbWUgbmFtZVwiIH0sXG4gIH0pO1xuXG4gIHJlcy5qc29uKHsgb2s6IHRydWUgfSk7XG59XG4iXSwibmFtZXMiOlsiY2xpZW50IiwidGVzdCIsInJlcSIsInJlcyIsInVzZXIiLCJjcmVhdGUiLCJkYXRhIiwibmFtZSIsImpzb24iLCJvayJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///(api)/./pages/api/test.tsx\n");

/***/ })

};
;

// load runtime
var __webpack_require__ = require("../../webpack-api-runtime.js");
__webpack_require__.C(exports);
var __webpack_exec__ = (moduleId) => (__webpack_require__(__webpack_require__.s = moduleId))
var __webpack_exports__ = (__webpack_exec__("(api)/./pages/api/test.tsx"));
module.exports = __webpack_exports__;

})();