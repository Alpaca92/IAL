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
exports.id = "pages/forms";
exports.ids = ["pages/forms"];
exports.modules = {

/***/ "./pages/forms.tsx":
/*!*************************!*\
  !*** ./pages/forms.tsx ***!
  \*************************/
/***/ ((module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.a(module, async (__webpack_handle_async_dependencies__, __webpack_async_result__) => { try {\n__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ Forms)\n/* harmony export */ });\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"react/jsx-dev-runtime\");\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var react_hook_form__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! react-hook-form */ \"react-hook-form\");\nvar __webpack_async_dependencies__ = __webpack_handle_async_dependencies__([react_hook_form__WEBPACK_IMPORTED_MODULE_1__]);\nreact_hook_form__WEBPACK_IMPORTED_MODULE_1__ = (__webpack_async_dependencies__.then ? (await __webpack_async_dependencies__)() : __webpack_async_dependencies__)[0];\n\n\nfunction Forms() {\n    var ref;\n    const { register , handleSubmit , formState: { errors: errors1  } ,  } = (0,react_hook_form__WEBPACK_IMPORTED_MODULE_1__.useForm)({\n        mode: \"onChange\"\n    });\n    const onValid = (data)=>{};\n    const onInvalid = (errors)=>{\n        console.log(errors);\n    };\n    return(/*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"form\", {\n        onSubmit: handleSubmit(onValid, onInvalid),\n        children: [\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"input\", {\n                ...register(\"username\", {\n                    required: \"username is required\",\n                    minLength: {\n                        value: 5,\n                        message: \"The username should be longer than 5 chars\"\n                    }\n                }),\n                type: \"text\",\n                placeholder: \"username\"\n            }, void 0, false, {\n                fileName: \"/home/ayaan/projects/TIL/next.js/carrot-clone/pages/forms.tsx\",\n                lineNumber: 24,\n                columnNumber: 7\n            }, this),\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"input\", {\n                ...register(\"email\", {\n                    required: \"email is required\",\n                    validate: {\n                        notGmail: (value)=>!value.includes(\"@gmail.com\") || \"gmail is not allowed\"\n                    }\n                }),\n                type: \"email\",\n                placeholder: \"Email\",\n                className: `${Boolean(errors1.email) ? \"border-red-500 focus:border-red-500\" : \"\"}`\n            }, void 0, false, {\n                fileName: \"/home/ayaan/projects/TIL/next.js/carrot-clone/pages/forms.tsx\",\n                lineNumber: 35,\n                columnNumber: 7\n            }, this),\n            (ref = errors1.email) === null || ref === void 0 ? void 0 : ref.message,\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"input\", {\n                ...register(\"password\", {\n                    required: \"password is required\"\n                }),\n                type: \"password\",\n                placeholder: \"Password\"\n            }, void 0, false, {\n                fileName: \"/home/ayaan/projects/TIL/next.js/carrot-clone/pages/forms.tsx\",\n                lineNumber: 50,\n                columnNumber: 7\n            }, this),\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"button\", {\n                children: \"Create Account\"\n            }, void 0, false, {\n                fileName: \"/home/ayaan/projects/TIL/next.js/carrot-clone/pages/forms.tsx\",\n                lineNumber: 57,\n                columnNumber: 7\n            }, this)\n        ]\n    }, void 0, true, {\n        fileName: \"/home/ayaan/projects/TIL/next.js/carrot-clone/pages/forms.tsx\",\n        lineNumber: 23,\n        columnNumber: 5\n    }, this));\n};\n\n__webpack_async_result__();\n} catch(e) { __webpack_async_result__(e); } });//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiLi9wYWdlcy9mb3Jtcy50c3guanMiLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7QUFDc0Q7QUFRdkMsUUFBUSxDQUFDQyxLQUFLLEdBQUcsQ0FBQztRQXVDMUJDLEdBQVk7SUF0Q2pCLEtBQUssQ0FBQyxDQUFDLENBQ0xDLFFBQVEsR0FDUkMsWUFBWSxHQUNaQyxTQUFTLEVBQUUsQ0FBQyxDQUFDSCxNQUFNLEVBQU5BLE9BQU0sRUFBQyxDQUFDLElBQ3ZCLENBQUMsR0FBR0Ysd0RBQU8sQ0FBWSxDQUFDO1FBQUNNLElBQUksRUFBRSxDQUFVO0lBQUMsQ0FBQztJQUMzQyxLQUFLLENBQUNDLE9BQU8sSUFBSUMsSUFBZSxHQUFLLENBQUMsQ0FBQztJQUV2QyxLQUFLLENBQUNDLFNBQVMsSUFBSVAsTUFBbUIsR0FBSyxDQUFDO1FBQzFDUSxPQUFPLENBQUNDLEdBQUcsQ0FBQ1QsTUFBTTtJQUNwQixDQUFDO0lBRUQsTUFBTSw2RUFDSFUsQ0FBSTtRQUFDQyxRQUFRLEVBQUVULFlBQVksQ0FBQ0csT0FBTyxFQUFFRSxTQUFTOzt3RkFDNUNLLENBQUs7bUJBQ0FYLFFBQVEsQ0FBQyxDQUFVLFdBQUUsQ0FBQztvQkFDeEJZLFFBQVEsRUFBRSxDQUFzQjtvQkFDaENDLFNBQVMsRUFBRSxDQUFDO3dCQUNWQyxLQUFLLEVBQUUsQ0FBQzt3QkFDUkMsT0FBTyxFQUFFLENBQTRDO29CQUN2RCxDQUFDO2dCQUNILENBQUM7Z0JBQ0RDLElBQUksRUFBQyxDQUFNO2dCQUNYQyxXQUFXLEVBQUMsQ0FBVTs7Ozs7O3dGQUV2Qk4sQ0FBSzttQkFDQVgsUUFBUSxDQUFDLENBQU8sUUFBRSxDQUFDO29CQUNyQlksUUFBUSxFQUFFLENBQW1CO29CQUM3Qk0sUUFBUSxFQUFFLENBQUM7d0JBQ1RDLFFBQVEsR0FBR0wsS0FBSyxJQUNiQSxLQUFLLENBQUNNLFFBQVEsQ0FBQyxDQUFZLGdCQUFLLENBQXNCO29CQUMzRCxDQUFDO2dCQUNILENBQUM7Z0JBQ0RKLElBQUksRUFBQyxDQUFPO2dCQUNaQyxXQUFXLEVBQUMsQ0FBTztnQkFDbkJJLFNBQVMsS0FDUEMsT0FBTyxDQUFDdkIsT0FBTSxDQUFDd0IsS0FBSyxJQUFJLENBQXFDLHVDQUFHLENBQUU7Ozs7OzthQUdyRXhCLEdBQVksR0FBWkEsT0FBTSxDQUFDd0IsS0FBSyxjQUFaeEIsR0FBWSxLQUFaQSxJQUFJLENBQUpBLENBQXFCLEdBQXJCQSxJQUFJLENBQUpBLENBQXFCLEdBQXJCQSxHQUFZLENBQUVnQixPQUFPO3dGQUNyQkosQ0FBSzttQkFDQVgsUUFBUSxDQUFDLENBQVUsV0FBRSxDQUFDO29CQUN4QlksUUFBUSxFQUFFLENBQXNCO2dCQUNsQyxDQUFDO2dCQUNESSxJQUFJLEVBQUMsQ0FBVTtnQkFDZkMsV0FBVyxFQUFDLENBQVU7Ozs7Ozt3RkFFdkJPLENBQU07MEJBQUMsQ0FBYzs7Ozs7Ozs7Ozs7O0FBRzVCLENBQUMiLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9jYXJyb3QtY2xvbmUvLi9wYWdlcy9mb3Jtcy50c3g/ZTJhOSJdLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBsb2FkRGVmYXVsdEVycm9yQ29tcG9uZW50cyB9IGZyb20gXCJuZXh0L2Rpc3Qvc2VydmVyL2xvYWQtY29tcG9uZW50c1wiO1xuaW1wb3J0IHsgRmllbGRFcnJvcnMsIHVzZUZvcm0gfSBmcm9tIFwicmVhY3QtaG9vay1mb3JtXCI7XG5cbmludGVyZmFjZSBMb2dpbkZvcm0ge1xuICB1c2VybmFtZTogc3RyaW5nO1xuICBwYXNzd29yZDogc3RyaW5nO1xuICBlbWFpbDogc3RyaW5nO1xufVxuXG5leHBvcnQgZGVmYXVsdCBmdW5jdGlvbiBGb3JtcygpIHtcbiAgY29uc3Qge1xuICAgIHJlZ2lzdGVyLFxuICAgIGhhbmRsZVN1Ym1pdCxcbiAgICBmb3JtU3RhdGU6IHsgZXJyb3JzIH0sXG4gIH0gPSB1c2VGb3JtPExvZ2luRm9ybT4oeyBtb2RlOiBcIm9uQ2hhbmdlXCIgfSk7XG4gIGNvbnN0IG9uVmFsaWQgPSAoZGF0YTogTG9naW5Gb3JtKSA9PiB7fTtcblxuICBjb25zdCBvbkludmFsaWQgPSAoZXJyb3JzOiBGaWVsZEVycm9ycykgPT4ge1xuICAgIGNvbnNvbGUubG9nKGVycm9ycyk7XG4gIH07XG5cbiAgcmV0dXJuIChcbiAgICA8Zm9ybSBvblN1Ym1pdD17aGFuZGxlU3VibWl0KG9uVmFsaWQsIG9uSW52YWxpZCl9PlxuICAgICAgPGlucHV0XG4gICAgICAgIHsuLi5yZWdpc3RlcihcInVzZXJuYW1lXCIsIHtcbiAgICAgICAgICByZXF1aXJlZDogXCJ1c2VybmFtZSBpcyByZXF1aXJlZFwiLFxuICAgICAgICAgIG1pbkxlbmd0aDoge1xuICAgICAgICAgICAgdmFsdWU6IDUsXG4gICAgICAgICAgICBtZXNzYWdlOiBcIlRoZSB1c2VybmFtZSBzaG91bGQgYmUgbG9uZ2VyIHRoYW4gNSBjaGFyc1wiLFxuICAgICAgICAgIH0sXG4gICAgICAgIH0pfVxuICAgICAgICB0eXBlPVwidGV4dFwiXG4gICAgICAgIHBsYWNlaG9sZGVyPVwidXNlcm5hbWVcIlxuICAgICAgLz5cbiAgICAgIDxpbnB1dFxuICAgICAgICB7Li4ucmVnaXN0ZXIoXCJlbWFpbFwiLCB7XG4gICAgICAgICAgcmVxdWlyZWQ6IFwiZW1haWwgaXMgcmVxdWlyZWRcIixcbiAgICAgICAgICB2YWxpZGF0ZToge1xuICAgICAgICAgICAgbm90R21haWw6ICh2YWx1ZSkgPT5cbiAgICAgICAgICAgICAgIXZhbHVlLmluY2x1ZGVzKFwiQGdtYWlsLmNvbVwiKSB8fCBcImdtYWlsIGlzIG5vdCBhbGxvd2VkXCIsXG4gICAgICAgICAgfSxcbiAgICAgICAgfSl9XG4gICAgICAgIHR5cGU9XCJlbWFpbFwiXG4gICAgICAgIHBsYWNlaG9sZGVyPVwiRW1haWxcIlxuICAgICAgICBjbGFzc05hbWU9e2Ake1xuICAgICAgICAgIEJvb2xlYW4oZXJyb3JzLmVtYWlsKSA/IFwiYm9yZGVyLXJlZC01MDAgZm9jdXM6Ym9yZGVyLXJlZC01MDBcIiA6IFwiXCJcbiAgICAgICAgfWB9XG4gICAgICAvPlxuICAgICAge2Vycm9ycy5lbWFpbD8ubWVzc2FnZX1cbiAgICAgIDxpbnB1dFxuICAgICAgICB7Li4ucmVnaXN0ZXIoXCJwYXNzd29yZFwiLCB7XG4gICAgICAgICAgcmVxdWlyZWQ6IFwicGFzc3dvcmQgaXMgcmVxdWlyZWRcIixcbiAgICAgICAgfSl9XG4gICAgICAgIHR5cGU9XCJwYXNzd29yZFwiXG4gICAgICAgIHBsYWNlaG9sZGVyPVwiUGFzc3dvcmRcIlxuICAgICAgLz5cbiAgICAgIDxidXR0b24+Q3JlYXRlIEFjY291bnQ8L2J1dHRvbj5cbiAgICA8L2Zvcm0+XG4gICk7XG59XG4iXSwibmFtZXMiOlsidXNlRm9ybSIsIkZvcm1zIiwiZXJyb3JzIiwicmVnaXN0ZXIiLCJoYW5kbGVTdWJtaXQiLCJmb3JtU3RhdGUiLCJtb2RlIiwib25WYWxpZCIsImRhdGEiLCJvbkludmFsaWQiLCJjb25zb2xlIiwibG9nIiwiZm9ybSIsIm9uU3VibWl0IiwiaW5wdXQiLCJyZXF1aXJlZCIsIm1pbkxlbmd0aCIsInZhbHVlIiwibWVzc2FnZSIsInR5cGUiLCJwbGFjZWhvbGRlciIsInZhbGlkYXRlIiwibm90R21haWwiLCJpbmNsdWRlcyIsImNsYXNzTmFtZSIsIkJvb2xlYW4iLCJlbWFpbCIsImJ1dHRvbiJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///./pages/forms.tsx\n");

/***/ }),

/***/ "react/jsx-dev-runtime":
/*!****************************************!*\
  !*** external "react/jsx-dev-runtime" ***!
  \****************************************/
/***/ ((module) => {

module.exports = require("react/jsx-dev-runtime");

/***/ }),

/***/ "react-hook-form":
/*!**********************************!*\
  !*** external "react-hook-form" ***!
  \**********************************/
/***/ ((module) => {

module.exports = import("react-hook-form");;

/***/ })

};
;

// load runtime
var __webpack_require__ = require("../webpack-runtime.js");
__webpack_require__.C(exports);
var __webpack_exec__ = (moduleId) => (__webpack_require__(__webpack_require__.s = moduleId))
var __webpack_exports__ = (__webpack_exec__("./pages/forms.tsx"));
module.exports = __webpack_exports__;

})();