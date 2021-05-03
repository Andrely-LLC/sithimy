/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 15);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./Modules/Slider/Resources/assets/admin/js/Slide.js":
/*!***********************************************************!*\
  !*** ./Modules/Slider/Resources/assets/admin/js/Slide.js ***!
  \***********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"default\", function() { return _default; });\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }\n\nvar _default =\n/*#__PURE__*/\nfunction () {\n  function _default(data) {\n    _classCallCheck(this, _default);\n\n    this.slidePanelHtml = this.getSlidePanelHtml(data);\n  }\n\n  _createClass(_default, [{\n    key: \"getSlidePanelHtml\",\n    value: function getSlidePanelHtml(data) {\n      data.slide.options = data.slide.options || this.getDefaultOptions();\n\n      var template = _.template($('#slide-template').html());\n\n      return $(template(data));\n    }\n  }, {\n    key: \"getDefaultOptions\",\n    value: function getDefaultOptions() {\n      return {\n        caption_1: {},\n        caption_2: {},\n        direction: 'left',\n        call_to_action: {}\n      };\n    }\n  }, {\n    key: \"render\",\n    value: function render() {\n      this.attachEventListeners();\n      this.showSelectedOptionBlock();\n      return this.slidePanelHtml;\n    }\n  }, {\n    key: \"attachEventListeners\",\n    value: function attachEventListeners() {\n      var _this = this;\n\n      this.slidePanelHtml.find('.delete-slide').on('click', function () {\n        _this.slidePanelHtml.remove();\n      });\n      this.slidePanelHtml.find('.change-option-block').on('change', function (e) {\n        _this.slidePanelHtml.find('.slide-options').hide();\n\n        _this.slidePanelHtml.find(\".\".concat(e.currentTarget.value)).show();\n      });\n    }\n  }, {\n    key: \"showSelectedOptionBlock\",\n    value: function showSelectedOptionBlock() {\n      var _this2 = this;\n\n      setTimeout(function () {\n        _this2.slidePanelHtml.find('.change-option-block').trigger('change');\n      });\n    }\n  }]);\n\n  return _default;\n}();\n\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9Nb2R1bGVzL1NsaWRlci9SZXNvdXJjZXMvYXNzZXRzL2FkbWluL2pzL1NsaWRlLmpzPzJjMjciXSwibmFtZXMiOlsiZGF0YSIsInNsaWRlUGFuZWxIdG1sIiwiZ2V0U2xpZGVQYW5lbEh0bWwiLCJzbGlkZSIsIm9wdGlvbnMiLCJnZXREZWZhdWx0T3B0aW9ucyIsInRlbXBsYXRlIiwiXyIsIiQiLCJodG1sIiwiY2FwdGlvbl8xIiwiY2FwdGlvbl8yIiwiZGlyZWN0aW9uIiwiY2FsbF90b19hY3Rpb24iLCJhdHRhY2hFdmVudExpc3RlbmVycyIsInNob3dTZWxlY3RlZE9wdGlvbkJsb2NrIiwiZmluZCIsIm9uIiwicmVtb3ZlIiwiZSIsImhpZGUiLCJjdXJyZW50VGFyZ2V0IiwidmFsdWUiLCJzaG93Iiwic2V0VGltZW91dCIsInRyaWdnZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7O0FBQ0ksb0JBQVlBLElBQVosRUFBa0I7QUFBQTs7QUFDZCxTQUFLQyxjQUFMLEdBQXNCLEtBQUtDLGlCQUFMLENBQXVCRixJQUF2QixDQUF0QjtBQUNIOzs7O3NDQUVpQkEsSSxFQUFNO0FBQ3BCQSxVQUFJLENBQUNHLEtBQUwsQ0FBV0MsT0FBWCxHQUFxQkosSUFBSSxDQUFDRyxLQUFMLENBQVdDLE9BQVgsSUFBc0IsS0FBS0MsaUJBQUwsRUFBM0M7O0FBRUEsVUFBSUMsUUFBUSxHQUFHQyxDQUFDLENBQUNELFFBQUYsQ0FBV0UsQ0FBQyxDQUFDLGlCQUFELENBQUQsQ0FBcUJDLElBQXJCLEVBQVgsQ0FBZjs7QUFFQSxhQUFPRCxDQUFDLENBQUNGLFFBQVEsQ0FBQ04sSUFBRCxDQUFULENBQVI7QUFDSDs7O3dDQUVtQjtBQUNoQixhQUFPO0FBQUVVLGlCQUFTLEVBQUUsRUFBYjtBQUFpQkMsaUJBQVMsRUFBRSxFQUE1QjtBQUFnQ0MsaUJBQVMsRUFBRSxNQUEzQztBQUFtREMsc0JBQWMsRUFBRTtBQUFuRSxPQUFQO0FBQ0g7Ozs2QkFFUTtBQUNMLFdBQUtDLG9CQUFMO0FBQ0EsV0FBS0MsdUJBQUw7QUFFQSxhQUFPLEtBQUtkLGNBQVo7QUFDSDs7OzJDQUVzQjtBQUFBOztBQUNuQixXQUFLQSxjQUFMLENBQW9CZSxJQUFwQixDQUF5QixlQUF6QixFQUEwQ0MsRUFBMUMsQ0FBNkMsT0FBN0MsRUFBc0QsWUFBTTtBQUN4RCxhQUFJLENBQUNoQixjQUFMLENBQW9CaUIsTUFBcEI7QUFDSCxPQUZEO0FBSUEsV0FBS2pCLGNBQUwsQ0FBb0JlLElBQXBCLENBQXlCLHNCQUF6QixFQUFpREMsRUFBakQsQ0FBb0QsUUFBcEQsRUFBOEQsVUFBQ0UsQ0FBRCxFQUFPO0FBQ2pFLGFBQUksQ0FBQ2xCLGNBQUwsQ0FBb0JlLElBQXBCLENBQXlCLGdCQUF6QixFQUEyQ0ksSUFBM0M7O0FBQ0EsYUFBSSxDQUFDbkIsY0FBTCxDQUFvQmUsSUFBcEIsWUFBNkJHLENBQUMsQ0FBQ0UsYUFBRixDQUFnQkMsS0FBN0MsR0FBc0RDLElBQXREO0FBQ0gsT0FIRDtBQUlIOzs7OENBRXlCO0FBQUE7O0FBQ3RCQyxnQkFBVSxDQUFDLFlBQU07QUFDYixjQUFJLENBQUN2QixjQUFMLENBQW9CZSxJQUFwQixDQUF5QixzQkFBekIsRUFBaURTLE9BQWpELENBQXlELFFBQXpEO0FBQ0gsT0FGUyxDQUFWO0FBR0giLCJmaWxlIjoiLi9Nb2R1bGVzL1NsaWRlci9SZXNvdXJjZXMvYXNzZXRzL2FkbWluL2pzL1NsaWRlLmpzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGRlZmF1bHQgY2xhc3Mge1xuICAgIGNvbnN0cnVjdG9yKGRhdGEpIHtcbiAgICAgICAgdGhpcy5zbGlkZVBhbmVsSHRtbCA9IHRoaXMuZ2V0U2xpZGVQYW5lbEh0bWwoZGF0YSk7XG4gICAgfVxuXG4gICAgZ2V0U2xpZGVQYW5lbEh0bWwoZGF0YSkge1xuICAgICAgICBkYXRhLnNsaWRlLm9wdGlvbnMgPSBkYXRhLnNsaWRlLm9wdGlvbnMgfHwgdGhpcy5nZXREZWZhdWx0T3B0aW9ucygpO1xuXG4gICAgICAgIGxldCB0ZW1wbGF0ZSA9IF8udGVtcGxhdGUoJCgnI3NsaWRlLXRlbXBsYXRlJykuaHRtbCgpKTtcblxuICAgICAgICByZXR1cm4gJCh0ZW1wbGF0ZShkYXRhKSk7XG4gICAgfVxuXG4gICAgZ2V0RGVmYXVsdE9wdGlvbnMoKSB7XG4gICAgICAgIHJldHVybiB7IGNhcHRpb25fMToge30sIGNhcHRpb25fMjoge30sIGRpcmVjdGlvbjogJ2xlZnQnLCBjYWxsX3RvX2FjdGlvbjoge30gfTtcbiAgICB9XG5cbiAgICByZW5kZXIoKSB7XG4gICAgICAgIHRoaXMuYXR0YWNoRXZlbnRMaXN0ZW5lcnMoKTtcbiAgICAgICAgdGhpcy5zaG93U2VsZWN0ZWRPcHRpb25CbG9jaygpO1xuXG4gICAgICAgIHJldHVybiB0aGlzLnNsaWRlUGFuZWxIdG1sO1xuICAgIH1cblxuICAgIGF0dGFjaEV2ZW50TGlzdGVuZXJzKCkge1xuICAgICAgICB0aGlzLnNsaWRlUGFuZWxIdG1sLmZpbmQoJy5kZWxldGUtc2xpZGUnKS5vbignY2xpY2snLCAoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLnNsaWRlUGFuZWxIdG1sLnJlbW92ZSgpO1xuICAgICAgICB9KTtcblxuICAgICAgICB0aGlzLnNsaWRlUGFuZWxIdG1sLmZpbmQoJy5jaGFuZ2Utb3B0aW9uLWJsb2NrJykub24oJ2NoYW5nZScsIChlKSA9PiB7XG4gICAgICAgICAgICB0aGlzLnNsaWRlUGFuZWxIdG1sLmZpbmQoJy5zbGlkZS1vcHRpb25zJykuaGlkZSgpO1xuICAgICAgICAgICAgdGhpcy5zbGlkZVBhbmVsSHRtbC5maW5kKGAuJHtlLmN1cnJlbnRUYXJnZXQudmFsdWV9YCkuc2hvdygpO1xuICAgICAgICB9KTtcbiAgICB9XG5cbiAgICBzaG93U2VsZWN0ZWRPcHRpb25CbG9jaygpIHtcbiAgICAgICAgc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLnNsaWRlUGFuZWxIdG1sLmZpbmQoJy5jaGFuZ2Utb3B0aW9uLWJsb2NrJykudHJpZ2dlcignY2hhbmdlJyk7XG4gICAgICAgIH0pO1xuICAgIH1cbn1cbiJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///./Modules/Slider/Resources/assets/admin/js/Slide.js\n");

/***/ }),

/***/ "./Modules/Slider/Resources/assets/admin/js/Slider.js":
/*!************************************************************!*\
  !*** ./Modules/Slider/Resources/assets/admin/js/Slider.js ***!
  \************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, \"default\", function() { return _default; });\n/* harmony import */ var _Slide__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Slide */ \"./Modules/Slider/Resources/assets/admin/js/Slide.js\");\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }\n\n\n\nvar _default =\n/*#__PURE__*/\nfunction () {\n  function _default() {\n    _classCallCheck(this, _default);\n\n    this.slideCount = 0;\n    this.addSlides(FleetCart.data['slider.slides']);\n\n    if (this.slideCount === 0) {\n      this.addSlide();\n    }\n\n    this.attachEventListeners();\n    this.makeSlidesSortable();\n  }\n\n  _createClass(_default, [{\n    key: \"addSlides\",\n    value: function addSlides(slides) {\n      var _iteratorNormalCompletion = true;\n      var _didIteratorError = false;\n      var _iteratorError = undefined;\n\n      try {\n        for (var _iterator = slides[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {\n          var attributes = _step.value;\n          this.addSlide(attributes);\n        }\n      } catch (err) {\n        _didIteratorError = true;\n        _iteratorError = err;\n      } finally {\n        try {\n          if (!_iteratorNormalCompletion && _iterator[\"return\"] != null) {\n            _iterator[\"return\"]();\n          }\n        } finally {\n          if (_didIteratorError) {\n            throw _iteratorError;\n          }\n        }\n      }\n    }\n  }, {\n    key: \"addSlide\",\n    value: function addSlide() {\n      var attributes = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : {};\n      var slide = new _Slide__WEBPACK_IMPORTED_MODULE_0__[\"default\"]({\n        slideNumber: this.slideCount++,\n        slide: attributes\n      });\n      $('#slides-wrapper').append(slide.render());\n    }\n  }, {\n    key: \"attachEventListeners\",\n    value: function attachEventListeners() {\n      var _this = this;\n\n      $('.add-slide').on('click', function () {\n        _this.addSlide();\n      });\n      this.attachImagePickerEventListener();\n    }\n  }, {\n    key: \"attachImagePickerEventListener\",\n    value: function attachImagePickerEventListener() {\n      $('#slides-wrapper').on('click', '.slide-image', function (e) {\n        var picker = new MediaPicker({\n          type: 'image'\n        });\n        picker.on('select', function (file) {\n          var html = \"\\n                    <img src=\\\"\".concat(file.path, \"\\\">\\n                    <input type=\\\"hidden\\\" name=\\\"slides[\").concat(e.currentTarget.dataset.slideNumber, \"][file_id]\\\" value=\\\"\").concat(file.id, \"\\\">\\n                \");\n          $(e.currentTarget).html(html);\n        });\n      });\n    }\n  }, {\n    key: \"makeSlidesSortable\",\n    value: function makeSlidesSortable() {\n      Sortable.create(document.getElementById('slides-wrapper'), {\n        handle: '.slide-drag',\n        animation: 150\n      });\n    }\n  }]);\n\n  return _default;\n}();\n\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9Nb2R1bGVzL1NsaWRlci9SZXNvdXJjZXMvYXNzZXRzL2FkbWluL2pzL1NsaWRlci5qcz81ZjE0Il0sIm5hbWVzIjpbInNsaWRlQ291bnQiLCJhZGRTbGlkZXMiLCJGbGVldENhcnQiLCJkYXRhIiwiYWRkU2xpZGUiLCJhdHRhY2hFdmVudExpc3RlbmVycyIsIm1ha2VTbGlkZXNTb3J0YWJsZSIsInNsaWRlcyIsImF0dHJpYnV0ZXMiLCJzbGlkZSIsIlNsaWRlIiwic2xpZGVOdW1iZXIiLCIkIiwiYXBwZW5kIiwicmVuZGVyIiwib24iLCJhdHRhY2hJbWFnZVBpY2tlckV2ZW50TGlzdGVuZXIiLCJlIiwicGlja2VyIiwiTWVkaWFQaWNrZXIiLCJ0eXBlIiwiZmlsZSIsImh0bWwiLCJwYXRoIiwiY3VycmVudFRhcmdldCIsImRhdGFzZXQiLCJpZCIsIlNvcnRhYmxlIiwiY3JlYXRlIiwiZG9jdW1lbnQiLCJnZXRFbGVtZW50QnlJZCIsImhhbmRsZSIsImFuaW1hdGlvbiJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7O0FBQUE7Ozs7O0FBR0ksc0JBQWM7QUFBQTs7QUFDVixTQUFLQSxVQUFMLEdBQWtCLENBQWxCO0FBRUEsU0FBS0MsU0FBTCxDQUFlQyxTQUFTLENBQUNDLElBQVYsQ0FBZSxlQUFmLENBQWY7O0FBRUEsUUFBSSxLQUFLSCxVQUFMLEtBQW9CLENBQXhCLEVBQTJCO0FBQ3ZCLFdBQUtJLFFBQUw7QUFDSDs7QUFFRCxTQUFLQyxvQkFBTDtBQUNBLFNBQUtDLGtCQUFMO0FBQ0g7Ozs7OEJBRVNDLE0sRUFBUTtBQUFBO0FBQUE7QUFBQTs7QUFBQTtBQUNkLDZCQUF1QkEsTUFBdkIsOEhBQStCO0FBQUEsY0FBdEJDLFVBQXNCO0FBQzNCLGVBQUtKLFFBQUwsQ0FBY0ksVUFBZDtBQUNIO0FBSGE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUlqQjs7OytCQUV5QjtBQUFBLFVBQWpCQSxVQUFpQix1RUFBSixFQUFJO0FBQ3RCLFVBQUlDLEtBQUssR0FBRyxJQUFJQyw4Q0FBSixDQUFVO0FBQUVDLG1CQUFXLEVBQUUsS0FBS1gsVUFBTCxFQUFmO0FBQWtDUyxhQUFLLEVBQUVEO0FBQXpDLE9BQVYsQ0FBWjtBQUVBSSxPQUFDLENBQUMsaUJBQUQsQ0FBRCxDQUFxQkMsTUFBckIsQ0FBNEJKLEtBQUssQ0FBQ0ssTUFBTixFQUE1QjtBQUNIOzs7MkNBRXNCO0FBQUE7O0FBQ25CRixPQUFDLENBQUMsWUFBRCxDQUFELENBQWdCRyxFQUFoQixDQUFtQixPQUFuQixFQUE0QixZQUFNO0FBQzlCLGFBQUksQ0FBQ1gsUUFBTDtBQUNILE9BRkQ7QUFJQSxXQUFLWSw4QkFBTDtBQUNIOzs7cURBRWdDO0FBQzdCSixPQUFDLENBQUMsaUJBQUQsQ0FBRCxDQUFxQkcsRUFBckIsQ0FBd0IsT0FBeEIsRUFBaUMsY0FBakMsRUFBaUQsVUFBQ0UsQ0FBRCxFQUFPO0FBQ3BELFlBQUlDLE1BQU0sR0FBRyxJQUFJQyxXQUFKLENBQWdCO0FBQUVDLGNBQUksRUFBRTtBQUFSLFNBQWhCLENBQWI7QUFFQUYsY0FBTSxDQUFDSCxFQUFQLENBQVUsUUFBVixFQUFvQixVQUFDTSxJQUFELEVBQVU7QUFDMUIsY0FBSUMsSUFBSSw4Q0FDUUQsSUFBSSxDQUFDRSxJQURiLDJFQUVnQ04sQ0FBQyxDQUFDTyxhQUFGLENBQWdCQyxPQUFoQixDQUF3QmQsV0FGeEQsa0NBRXlGVSxJQUFJLENBQUNLLEVBRjlGLDBCQUFSO0FBS0FkLFdBQUMsQ0FBQ0ssQ0FBQyxDQUFDTyxhQUFILENBQUQsQ0FBbUJGLElBQW5CLENBQXdCQSxJQUF4QjtBQUNILFNBUEQ7QUFRSCxPQVhEO0FBWUg7Ozt5Q0FFb0I7QUFDakJLLGNBQVEsQ0FBQ0MsTUFBVCxDQUFnQkMsUUFBUSxDQUFDQyxjQUFULENBQXdCLGdCQUF4QixDQUFoQixFQUEyRDtBQUN2REMsY0FBTSxFQUFFLGFBRCtDO0FBRXZEQyxpQkFBUyxFQUFFO0FBRjRDLE9BQTNEO0FBSUgiLCJmaWxlIjoiLi9Nb2R1bGVzL1NsaWRlci9SZXNvdXJjZXMvYXNzZXRzL2FkbWluL2pzL1NsaWRlci5qcy5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCBTbGlkZSBmcm9tICcuL1NsaWRlJztcblxuZXhwb3J0IGRlZmF1bHQgY2xhc3Mge1xuICAgIGNvbnN0cnVjdG9yKCkge1xuICAgICAgICB0aGlzLnNsaWRlQ291bnQgPSAwO1xuXG4gICAgICAgIHRoaXMuYWRkU2xpZGVzKEZsZWV0Q2FydC5kYXRhWydzbGlkZXIuc2xpZGVzJ10pO1xuXG4gICAgICAgIGlmICh0aGlzLnNsaWRlQ291bnQgPT09IDApIHtcbiAgICAgICAgICAgIHRoaXMuYWRkU2xpZGUoKTtcbiAgICAgICAgfVxuXG4gICAgICAgIHRoaXMuYXR0YWNoRXZlbnRMaXN0ZW5lcnMoKTtcbiAgICAgICAgdGhpcy5tYWtlU2xpZGVzU29ydGFibGUoKTtcbiAgICB9XG5cbiAgICBhZGRTbGlkZXMoc2xpZGVzKSB7XG4gICAgICAgIGZvciAobGV0IGF0dHJpYnV0ZXMgb2Ygc2xpZGVzKSB7XG4gICAgICAgICAgICB0aGlzLmFkZFNsaWRlKGF0dHJpYnV0ZXMpO1xuICAgICAgICB9XG4gICAgfVxuXG4gICAgYWRkU2xpZGUoYXR0cmlidXRlcyA9IHt9KSB7XG4gICAgICAgIGxldCBzbGlkZSA9IG5ldyBTbGlkZSh7IHNsaWRlTnVtYmVyOiB0aGlzLnNsaWRlQ291bnQrKywgc2xpZGU6IGF0dHJpYnV0ZXMgfSk7XG5cbiAgICAgICAgJCgnI3NsaWRlcy13cmFwcGVyJykuYXBwZW5kKHNsaWRlLnJlbmRlcigpKTtcbiAgICB9XG5cbiAgICBhdHRhY2hFdmVudExpc3RlbmVycygpIHtcbiAgICAgICAgJCgnLmFkZC1zbGlkZScpLm9uKCdjbGljaycsICgpID0+IHtcbiAgICAgICAgICAgIHRoaXMuYWRkU2xpZGUoKTtcbiAgICAgICAgfSk7XG5cbiAgICAgICAgdGhpcy5hdHRhY2hJbWFnZVBpY2tlckV2ZW50TGlzdGVuZXIoKTtcbiAgICB9XG5cbiAgICBhdHRhY2hJbWFnZVBpY2tlckV2ZW50TGlzdGVuZXIoKSB7XG4gICAgICAgICQoJyNzbGlkZXMtd3JhcHBlcicpLm9uKCdjbGljaycsICcuc2xpZGUtaW1hZ2UnLCAoZSkgPT4ge1xuICAgICAgICAgICAgbGV0IHBpY2tlciA9IG5ldyBNZWRpYVBpY2tlcih7IHR5cGU6ICdpbWFnZScgfSk7XG5cbiAgICAgICAgICAgIHBpY2tlci5vbignc2VsZWN0JywgKGZpbGUpID0+IHtcbiAgICAgICAgICAgICAgICBsZXQgaHRtbCA9IGBcbiAgICAgICAgICAgICAgICAgICAgPGltZyBzcmM9XCIke2ZpbGUucGF0aH1cIj5cbiAgICAgICAgICAgICAgICAgICAgPGlucHV0IHR5cGU9XCJoaWRkZW5cIiBuYW1lPVwic2xpZGVzWyR7ZS5jdXJyZW50VGFyZ2V0LmRhdGFzZXQuc2xpZGVOdW1iZXJ9XVtmaWxlX2lkXVwiIHZhbHVlPVwiJHtmaWxlLmlkfVwiPlxuICAgICAgICAgICAgICAgIGA7XG5cbiAgICAgICAgICAgICAgICAkKGUuY3VycmVudFRhcmdldCkuaHRtbChodG1sKTtcbiAgICAgICAgICAgIH0pO1xuICAgICAgICB9KTtcbiAgICB9XG5cbiAgICBtYWtlU2xpZGVzU29ydGFibGUoKSB7XG4gICAgICAgIFNvcnRhYmxlLmNyZWF0ZShkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnc2xpZGVzLXdyYXBwZXInKSwge1xuICAgICAgICAgICAgaGFuZGxlOiAnLnNsaWRlLWRyYWcnLFxuICAgICAgICAgICAgYW5pbWF0aW9uOiAxNTAsXG4gICAgICAgIH0pO1xuICAgIH1cbn1cbiJdLCJzb3VyY2VSb290IjoiIn0=\n//# sourceURL=webpack-internal:///./Modules/Slider/Resources/assets/admin/js/Slider.js\n");

/***/ }),

/***/ "./Modules/Slider/Resources/assets/admin/js/main.js":
/*!**********************************************************!*\
  !*** ./Modules/Slider/Resources/assets/admin/js/main.js ***!
  \**********************************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _Slider__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Slider */ \"./Modules/Slider/Resources/assets/admin/js/Slider.js\");\n\nnew _Slider__WEBPACK_IMPORTED_MODULE_0__[\"default\"]();\n$('#autoplay').on('change', function (e) {\n  $('.autoplay-speed-field').toggleClass('hide');\n});\nwindow.admin.removeSubmitButtonOffsetOn('#slides');//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9Nb2R1bGVzL1NsaWRlci9SZXNvdXJjZXMvYXNzZXRzL2FkbWluL2pzL21haW4uanM/MGY1NSJdLCJuYW1lcyI6WyJTbGlkZXIiLCIkIiwib24iLCJlIiwidG9nZ2xlQ2xhc3MiLCJ3aW5kb3ciLCJhZG1pbiIsInJlbW92ZVN1Ym1pdEJ1dHRvbk9mZnNldE9uIl0sIm1hcHBpbmdzIjoiQUFBQTtBQUFBO0FBQUE7QUFFQSxJQUFJQSwrQ0FBSjtBQUVBQyxDQUFDLENBQUMsV0FBRCxDQUFELENBQWVDLEVBQWYsQ0FBa0IsUUFBbEIsRUFBNEIsVUFBQ0MsQ0FBRCxFQUFPO0FBQy9CRixHQUFDLENBQUMsdUJBQUQsQ0FBRCxDQUEyQkcsV0FBM0IsQ0FBdUMsTUFBdkM7QUFDSCxDQUZEO0FBSUFDLE1BQU0sQ0FBQ0MsS0FBUCxDQUFhQywwQkFBYixDQUF3QyxTQUF4QyIsImZpbGUiOiIuL01vZHVsZXMvU2xpZGVyL1Jlc291cmNlcy9hc3NldHMvYWRtaW4vanMvbWFpbi5qcy5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCBTbGlkZXIgZnJvbSAnLi9TbGlkZXInO1xuXG5uZXcgU2xpZGVyKCk7XG5cbiQoJyNhdXRvcGxheScpLm9uKCdjaGFuZ2UnLCAoZSkgPT4ge1xuICAgICQoJy5hdXRvcGxheS1zcGVlZC1maWVsZCcpLnRvZ2dsZUNsYXNzKCdoaWRlJyk7XG59KTtcblxud2luZG93LmFkbWluLnJlbW92ZVN1Ym1pdEJ1dHRvbk9mZnNldE9uKCcjc2xpZGVzJyk7XG4iXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///./Modules/Slider/Resources/assets/admin/js/main.js\n");

/***/ }),

/***/ 15:
/*!****************************************************************!*\
  !*** multi ./Modules/Slider/Resources/assets/admin/js/main.js ***!
  \****************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /Users/nnhshu/workspace/sithimy/Modules/Slider/Resources/assets/admin/js/main.js */"./Modules/Slider/Resources/assets/admin/js/main.js");


/***/ })

/******/ });