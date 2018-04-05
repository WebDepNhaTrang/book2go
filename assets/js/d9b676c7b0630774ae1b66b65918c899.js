/* FILE: /plugins/system/easyslider/assets/js/controller.js */
void function ( exports, $, _, Backbone ) {

	exports.ES_Events = Object.create(Backbone.Events);

	exports.ES_Slider_Controller = Backbone.View.extend({
		constructor: function ES_Slider_Controller( slider, options ) {
			Backbone.View.call(this, _.extend({ el: slider.el, slider: slider }, options));
		}
	})

	exports.ES_Standard_Controller = ES_Slider_Controller.extend({
		initialize: function ( options ) {

			var slider = options.slider;
			var slides = slider.slides.subViews;
			var autoSlide = slider.model.get('autoSlide.enable');
			//if (slides.length == 1)
			//	return;

			var animation, transition, transition_next, transition_prev;
			var dragOUT, dragIN_next, dragIN_prev, drag_direction;

			// Hide all slides
			_.invoke(slides, 'hide');

			// Listen to slider events
			slider
				.on('change', handleChange)
				.on('pause', handlePause)
				.on('pause:transition', handlePauseTransition)
				.on('resume', handleResume);

			// TODO: disable for 2.0 release. This has some bugs related to drag drop problem
			//slides.length > 1 && slider.$el
			//	.addClass('jsn-es-draggable')
			//	.on('es_dragstart', handleDrag)
			//	.on('es_dragmove', handleDrag)
			//	.on('es_dragstop', handleDrag);

			slider.$slides
				.css('overflow', 'hidden')
				//.css('perspective', '1000px')
				.css('transform-style', 'preserve-3d');

			function stopAnimations() {
				if ( animation ) {
					animation.pause();
					animation = null;
				}
				if ( transition ) {
					transition.end();
					transition = null;
				}
				if ( transition_next ) {
					transition_next.stop();
					transition_next = null;
				}
				if ( transition_prev ) {
					transition_prev.stop();
					transition_prev = null;
				}
			};
			function triggerAnimations( IN ) {
				animation = ES_Tween.progress(IN.duration, function ( progress, ended ) {
					IN.renderAnimation(progress);
					if ( autoSlide && ended ) {
						slider.next();
						animation = null;
					}
				});
			};

			function handlePause() {
				if (animation)
					animation.pause();
				if (transition)
					transition.pause();
			};
			function handlePauseTransition() {
				if (animation) {
					//console.log(animation)
					//console.log('pause')

					//animation.seek(animation.duration - 1).pause();
				}
			};
			function handleResume() {
				if (animation)
					animation.resume();
				if (transition)
					transition.resume();
			};
			function handleChange( index, direction ) {

				var IN = this.getSlideAt(index);
				var OUT = this.getActiveSlide();
				stopAnimations();
				if (IN) {
					IN.prepare();
					slider.setActiveSlide(index);

					if ( OUT && OUT !== IN ) {
						transition = new ES_Transition(IN, OUT, direction)
								.once('complete', function () {
									transition = null;
									OUT.deactivate();
									triggerAnimations(IN);
								});
					}
					else {
						triggerAnimations(IN);
					}
				}

			};
			function handleDrag( e, drag ) {
				switch ( e.type ) {
					case 'es_dragstart':

						stopAnimations();

						dragOUT = slider.getActiveSlide();
						dragIN_next = slider.getNextSlide().prepare();
						dragIN_prev = slider.getPrevSlide().prepare();
						drag_direction = 'none';

						transition_next = new ES_Transition(dragIN_next, dragOUT, 'next')
							.pause()
							.once('complete', function () {
								dragOUT.deactivate();
								dragIN_prev.deactivate();
								stopAnimations();
								triggerAnimations(dragIN_next);
							})
							.once('cancel', function () {
								dragIN_next.deactivate();
								dragIN_prev.deactivate();
								anim = animation;
								stopAnimations();
								if (anim)
									anim.resume();
							});

						transition_prev = new ES_Transition(dragIN_prev, dragOUT, 'prev')
							.pause()
							.once('complete', function () {
								dragOUT.deactivate();
								dragIN_next.deactivate();
								stopAnimations();
								triggerAnimations(dragIN_prev);
							})
							.once('cancel', function () {
								dragIN_next.deactivate();
								dragIN_prev.deactivate();
								anim = animation;
								stopAnimations();
								if (anim)
									anim.resume();
							});

						break; // Case 'es_dragstart'

					case 'es_dragmove':

						if ( drag.axis == 'x' ) {
							e.preventDefault();
							e.stopPropagation();
							if ( slider.model.get('layout.preset') == 'full-screen' )
								window.scrollTo(0, slider.el.offsetTop);
						}
						if ( drag.moveX > 0 )
							drag_direction = 'right';
						else if ( drag.moveX < 0 )
							drag_direction = 'left';
						else
							drag_direction = 'none';

						var progress = Math.min(1, Math.abs(drag.moveX) / slider.stage_width);

						switch ( drag_direction ) {

							case 'right': // Transition to prev
								dragIN_next.hide();
								dragIN_prev.show();
								slider.setActiveSlide(progress > 0.3 ? dragIN_prev.index : dragOUT.index);

								transition_prev &&
								transition_prev.seekPercent(progress);
								break;

							case 'left': // Transition to next
								dragIN_prev.hide();
								dragIN_next.show();
								slider.setActiveSlide(progress > 0.3 ? dragIN_next.index : dragOUT.index);

								transition_next &&
								transition_next.seekPercent(progress);
								break;
						}
						break; // Case 'es_dragmove'

					case 'es_dragstop':

						var progress = Math.min(1, Math.abs(drag.moveX) / slider.stage_width);

						switch ( drag_direction ) {
							case 'right': // Transition to prev
								progress > 0.3 ?
									(transition_prev && transition_prev.resume()) :
									(transition_prev && transition_prev.stop().trigger('cancel'));
								break;
							case 'left': // Transition to next
								progress > 0.3 ?
									(transition_next && transition_next.resume()) :
									(transition_next && transition_next.stop().trigger('cancel'));
								break;
						}

						break; // Case 'es_dragstop'
				}
			};

			function isReverse( IN, OUT, direction ) {
				if ( direction === 'next' )
					return 1;
				if ( direction === 'prev' )
					return -1;
				if ( OUT.index === 0 && IN.index == slides.length - 1 && IN.index != 1 )
					return -1;
				if ( IN.index === 0 && OUT.index == slides.length - 1 )
					return 1;
				return (OUT.index < IN.index) ? 1 : -1;
			};

			function ES_Transition( IN, OUT, direction ) {
				var vector = isReverse(IN, OUT, direction);
				var transition = ( vector == 1 ? OUT : IN ).model.get('transition');
				var effect = transition.get('effect');
				var duration = transition.get('duration');
				var easing = transition.get('easing');
				var timing = ES_Easings[ easing ] ? ES_Easings[ easing ] : ES_Easings.linear;
				var flow = transition.get('flow');
				var width = slider.stage_width;
				var size = flow == 'x' ? slider.stage_width : slider.stage_height;
				var axis = flow;
				var render = _.noop;
				var cleanup = _.noop;

				OUT.$el.add(IN.el)
					.css('transform-origin', '50% 50% 0')
				slider.$stage
					.css('overflow', 'hidden');

				function switchIndex() {
					OUT.el.style.zIndex = 2;
					IN.el.style.zIndex = 1;
				}
				function revertIndex() {
					OUT.el.style.zIndex = 1;
					IN.el.style.zIndex = 2;
				}
				OUT.el.style.zIndex = 2;
				IN.el.style.zIndex = 1;
				OUT.el.style.opacity = 1;
				IN.el.style.opacity = 0; // Set opacity to 0 so the slide remain hidden until animation start

				switch ( effect ) {
					case 'cube':
						revertIndex();
						IN.el.style.opacity = 1;
						OUT.el.style.opacity = 1;
						//slider.$stage.css('perspective', width * 2 + 'px');
						axis = flow == 'x' ? 'y' : 'x';
						render = function ( progress ) {
							render_Cube(IN.el, OUT.el, axis, size, progress, vector);
						}
						break;
					case 'switch':
						//slider.$stage.css('perspective', width * 2 + 'px');
						// IMPORTANT: perspective can not be set in container. this will cause text blurriness
						// on mobile safari.
						axis = flow == 'x' ? 'y' : 'x';
						render = function ( progress ) {
							progress > 0.5 ?
								revertIndex() :
								switchIndex();
							render_Switch(IN.el, OUT.el, axis, size, progress, vector);
						}
						break;
					case 'slide':
						revertIndex();
						render = function ( progress ) {
							render_Move(IN.el, OUT.el, axis, size, size, progress, vector);
						}
						break;
					case 'parallax':
						revertIndex();
						render = function ( progress ) {
							render_Move(IN.el, OUT.el, axis, size, size / 4, progress, vector);
						}
						break;
					case 'slide-over':
						switchIndex();
						switch ( vector ) {
							case 1:
								render = function ( progress ) {
									revertIndex();
									render_Move(IN.el, OUT.el, axis, size, 0, progress, 1);
								};
								break;
							case -1:
								render = function ( progress ) {
									//switchIndex();
									render_Move(IN.el, OUT.el, axis, 0, size, progress, -1);
								};
								break;
						}
						break;
					case 'slide-out':
						revertIndex();
						switch ( vector ) {
							case 1:
								switchIndex();
								render = function ( progress ) {
									render_Move(IN.el, OUT.el, axis, 0, size, progress, -1);
								};
								break;
							case -1:
								//revertIndex();
								render = function ( progress ) {
									render_Move(IN.el, OUT.el, axis, size, 0, progress, 1);
								};
								break;
						}
						break;
					case 'blur':
						revertIndex();
						IN.el.style.opacity = 0;
						cleanup = _.compose(cleanup, function () {
							filter(OUT.el, 'none');
							filter(IN.el, 'none');
						});
						render = function ( progress ) {
							filter(OUT.el, 'blur(' + (progress * 100) + 'px)');
							filter(IN.el, 'blur(' + ((1 - progress) * 100) + 'px)');
							IN.el.style.opacity = progress;
							OUT.el.style.opacity = 1 - progress;
						}
						break;
					default:
						switchIndex();
						render = function ( progress ) {
							OUT.el.style.opacity = 1-progress;
							IN.el.style.opacity = progress;
						}
				}

				cleanup = _.compose(cleanup, function () {
					transform(IN.el, '');
					transform(OUT.el, '');
					IN.el.style.opacity = 1;
					OUT.el.style.opacity = 0;
				});

				return ES_Tween.progress(duration, function ( progress, ended ) {
					render(timing(progress));
				})
					// Only show the in element when transition tween started
					// to provent flicking on slow machines
					.once('start', function() {
						IN.el.style.opacity = 1;
					})
					.once('end', function () {
						cleanup();
						revertIndex();
						this.trigger('complete');
					})
					.once('cancel', function () {
						cleanup();
						revertIndex();
						IN.el.style.opacity = 0;
						OUT.el.style.opacity = 1;
					});
			};
			function render_Move( IN, OUT, axis, distanceIn, distanceOut, progress, vector ) {
				var inValue = (1 - progress) * distanceIn * vector;
				var outValue = progress * -distanceOut * vector;
				switch ( axis ) {
					case 'x':
						transform(IN, 'translate3d(' + inValue + 'px,0,0)');
						transform(OUT, 'translate3d(' + outValue + 'px,0,0)');
						break;
					case 'y':
						transform(IN, 'translate3d(0,' + inValue + 'px,0)');
						transform(OUT, 'translate3d(0,' + outValue + 'px,0)');
						break;
				}
			};
			function render_Cube( IN, OUT, axis, size, progress, vector ) {
				var perspective = size * 2;
				var outRotation = progress * -90 * vector;
				var inRotation = outRotation + (90 * vector);
				var rotationVector = axis == 'y' ? '0,1,0' : '1,0,0';
				var radius = size / 2;
				if ( progress < 0.25 )
					var scale = 1 - (progress * 4 * 0.25)
				else if ( progress < 0.75 )
					var scale = 0.75;
				else
					var scale = 0.75 + (progress - 0.75) * 4 * 0.25;

				transform(OUT, 'perspective('+perspective+'px) scale(' + scale + ')' +
					'translate3d(0,0,-' + radius + 'px)' +
					'rotate3d(' + rotationVector + ',' + outRotation + 'deg)' +
					'translate3d(0,0,' + radius + 'px)');
				transform(IN, 'perspective('+perspective+'px) scale(' + scale + ')' +
					'translate3d(0,0,-' + radius + 'px)' +
					'rotate3d(' + rotationVector + ',' + inRotation + 'deg)' +
					'translate3d(0,0,' + radius + 'px)');
			};
			function render_Switch( IN, OUT, axis, size, progress, vector ) {
				var perspective = size * 2;
				var outRotation = progress * -180 * vector;
				var inRotation = (180 - Math.abs(outRotation)) * vector;
				var rotationVector = axis == 'y' ? '0,1,0' : '1,0,0';
				var radius = size / 2;
				transform(OUT, 'perspective('+perspective+'px) translate3d(0,0,-' + radius + 'px) ' +
					'rotate3d(' + rotationVector + ',' + (outRotation) + 'deg) ' +
					'translate3d(0,0,' + radius + 'px) ' +
					'rotate3d(' + rotationVector + ',' + (-outRotation) + 'deg)');
				transform(IN, 'perspective('+perspective+'px) translate3d(0,0,-' + radius + 'px) ' +
					'rotate3d(' + rotationVector + ',' + (inRotation) + 'deg) ' +
					'translate3d(0,0,' + radius + 'px) ' +
					'rotate3d(' + rotationVector + ',' + (-inRotation) + 'deg)');
			};
		}
	})

	exports.ES_Interactive_Controller = ES_Slider_Controller.extend({
		initialize: function ( options ) {
			var slider = options.slider;
			var autoSlide = slider.model.get('autoSlide.enable');
			//if (slider.model.get('slides').length == 1)
			//	return;

			var direction, velocity, distance, delta, vector, size, totalSize, spacing, animation;
			var activeSlide;
			var preset = slider.model.get('layout.preset');

			if (preset == 'auto-width')
				slider.model.set('layout.auto_w', false);
			else
				slider.model.set('layout.auto_w', true);

			var mode = slider.model.get('layout.mode');
			var flow = slider.model.get('layout.flow');
			var auto_w = slider.model.get('layout.auto_w');
			var auto_h = slider.model.get('layout.auto_h');
			var spacing = slider.model.get('layout.spacing');

			var duration = 1000;
			var multiplier = 1;
			var moving;
			var offset = 0;
			var offsetIndex = 0;
			var offsetFactor = 0;
			var activeIndex = 0;
			var progress = 0;
			var slides = slider.slides.subViews;
			var isCube, $cube, cube = {
				faces: {},
				faceRotation: {
					0: 'front',
					90: 'left',
					180: 'back',
					270: 'right',
					360: 'front'
				}
			};
			var isCarousel, carousel = {};

			slider
				.on('change', change)
				.on('resize', resize)
				.on('ready', ready);

			slider.model.get('interactive.enable') && slider.$el
				.addClass('jsn-es-draggable')
				.on('es_dragstart', handleDrag)
				.on('es_dragmove', handleDrag)
				.on('es_dragstop', handleDrag);

			_.each(slides, function ( slide ) {
				slide.$swiper = slide.$('.jsn-es-swiper');
				slide.$el.before(slide.$swiper);
				slide.$swiper.append(slide.el);
			});

			//_.defer(resize);

			switch ( mode ) {
				case 'cube':
					ES_Cube_Controller(slider);
					break;
				case 'carousel':
					slider.$el.addClass('jsn-es-flat-slider')
					ES_Carousel_Controller(slider);
					break;
				case 'coverflow':
					ES_Coverflow_Controller(slider);
					break;
				case 'polygon':
					ES_Polygon_Controller(slider);
					break;
				default:
					slider.$el.addClass('jsn-es-flat-slider')
					break;
			}

			function ready() {
				handleAnimation();
				this.trigger('change', 1);
				this.delay(_.bind(function() {
					// this.trigger('change', 0);
				}, this), 10);
			}

			function change( index ) {
				if ( animation ) {
					animation.pause();
					animation = null;
				}
				var index = givenIndex = slider.getOffsetIndex(index, 0);
				if ( activeIndex == slides.length - 1 && index == 0 )
					index += slides.length;
				else if ( index == slides.length - 1 && activeIndex == 0 )
					index = -1;
				else if ( index - activeIndex > (slides.length) / 2 )
					index -= slides.length;
				handleTransition((offsetIndex + index - activeIndex) * -size)
			}

			function resize() {
				if ( animation ) {
					animation.pause();
					animation = null;
				}

                size = slider.stage_size = flow == 'x' ?
					(auto_w ? slider.stage_width : slider.width) :
					(auto_h ? slider.stage_height : slider.height);

				switch ( mode ) {
					case 'slide':
						size += spacing;
						break;
				}

				offset = offsetIndex * size;
				totalSize = size * slides.length - 1;

				slider.stageOffset = slider.$stage.offset();
				slider.stageOffset.start = flow == 'x' ? slider.stageOffset.left : slider.stageOffset.top;
				slider.stageOffset.end = flow == 'x' ? slider.stageOffset.left + slider.$stage.width() : slider.stageOffset.top + slider.$stage.height();
				slider.stageOffset.center = flow == 'x' ? slider.stageOffset.left + slider.$stage.width() / 2 : slider.stageOffset.top + slider.$stage.height() / 2;

				requestAnimationFrame(handleFrame);

				_.each(slides, function ( slide ) {
					slide.background.resizeVideo(true)
				})
			}

			function handleDrag( e, data ) {
				if ( data.axis != flow && e.type != 'es_dragstart' )
					return;

				if ( data.axis == flow ) {
					e.preventDefault();
					e.stopPropagation();
				}
				switch ( e.type ) {
					case 'es_dragstart':
						if ( animation ) {
							animation.pause();
							if ( animation.tween && animation.tween.offset )
								offset = Math.round(animation.tween.offset);
							animation = null;
						}
						else {
							offset || (offset = 0)
						}
						requestAnimationFrame(handleFrame)
						break;
					case 'es_dragmove':
						velocity = flow == 'x' ? data.velocityX : data.velocityY;
						distance = flow == 'x' ? data.moveX : data.moveY;
						delta = flow == 'x' ? data.deltaX : data.deltaY;
						direction = data.direction;
						vector = distance < 0 ? -1 : 1;
						offset += delta;
						moving = true;
						requestAnimationFrame(handleFrame)
						break;
					case 'es_dragstop':
						moving = false;
						handleTransition();
						break;
				}
			}

			function handleTransition( toOffset ) {
				var fromOffset = offset;
				var d = Math.max(Math.min(size / 4, 1000), 100)
				var toDuration = duration;
				if ( typeof toOffset !== 'number' ) {
					var throwDistance = Math.max(Math.min(velocity / 2, 10), 1) * d * vector;
					var toOffset = round(offset + throwDistance, size);
					var percent = 1 || Math.round(offset % size - throwDistance / size);
					var toDuration = Math.min(duration, Math.max(1, duration * percent));
				}
				else {
					var toOffset = round(toOffset, size)
				}
				if ( getOffsetIndex(toOffset) !== activeIndex ) {

				}
				animation = ES_Tween(null, {
					from: { offset: fromOffset },
					to: { offset: toOffset },
					duration: toDuration,
					easing: 'easeOutCubic',
				})
					.on('tick', function () {
						if ( !this.tween )
							return;
						offset = Math.round(this.tween.offset);
						moving = true;
						handleFrame();
					})
					.on('end', function () {
						animation = null;
						moving = false;
						handleAnimation();
					})
			}

			function handleFrame() {
				var index = getOffsetIndex(offset, 0)
				if ( index != activeIndex ) {
					activeIndex = index;
					activeSlide = slider.setActiveSlide(index);
					offsetFactor = offset / -size;
					offsetIndex = Math.round(offsetFactor);
					activeSlide.order = 0;
					activeSlide.offsetIndex = offsetIndex;
					activeSlide.offsetStart = offsetIndex * size;
				}
				// Set the translate offset for slides wrapper element
				translate3d(slider.$wrapper, flow, offset);
				var i = 1, a = 1, b = -1;
				var last, next;
				var lastNext = lastPrev = index;
				while ( i < slides.length ) {
					if ( i++ < slides.length ) {
						next = slider.getSlideAt(lastNext = slider.getOffsetIndex(1, lastNext));
						next.order = a++;
						next.offsetIndex = offsetIndex + next.order;
						next.offsetStart = next.offsetIndex * size;
						translate3d(next.$swiper, flow, next.offsetStart);
					}
					if ( i++ < slides.length ) {
						last = slider.getSlideAt(lastPrev = slider.getOffsetIndex(-1, lastPrev));
						last.order = b--;
						last.offsetIndex = offsetIndex + last.order;
						last.offsetStart = last.offsetIndex * size;
						translate3d(last.$swiper, flow, last.offsetStart);
					}
				}

				_.each(slides, function ( slide, i ) {
					slide.offset = slide.$swiper.offset();
					slide.offset.start = flow == 'x' ? slide.offset.left : slide.offset.top;
					slide.offset.end = flow == 'x' ? slide.offset.left + slide.$swiper.width() : slide.offset.top + slide.$swiper.height();
					slide.offset.center = flow == 'x' ? slide.offset.left + slide.$swiper.width() / 2 : slide.offset.top + slide.$swiper.height() / 2;
					//	return log(i, 'outside');
					if ( slide.offset.end > slider.stageOffset.start && slide.offset.center < slider.stageOffset.center ) {
						if ( !slide.onStage ) {
							slide.trigger('transition:enter');
							slide.moveDirection = 'in';
						}
						if ( slide.onStage && slide.onStageSide != 'left' ) {
							//slide.trigger('position', 'left', slide.onStageSide);
							slide.moveDirection = 'out';
						}
						slide.onStage = true;
						slide.onStageSide = 'left';
					}
					else if ( slide.offset.start < slider.stageOffset.end && slide.offset.center > slider.stageOffset.center ) {
						if ( !slide.onStage ) {
							slide.trigger('transition:enter');
							slide.moveDirection = 'in';
						}
						if ( slide.onStage && slide.onStageSide != 'right' ) {
							//slide.trigger('position', 'right', slide.onStageSide);
							slide.moveDirection = 'out';
						}
						slide.onStage = true;
						slide.onStageSide = 'right';
					}
					else if ( slide.offset.start == slider.stageOffset.start || slide.offset.center == slider.stageOffset.center ) {
						if ( slide.onStageSide != 'center' ) {
							slide.trigger('focus');
						}
						slide.onStage = true;
						slide.onStageSide = 'center';
						slide.moveDirection = 'none';
					}
					//if ( slide.offset.start > window.innerWidth || slide.offset.end < 0 )
					else {
						if ( slide.onStage ) {
							slide.trigger('transition:leave');
						}
						slide.onStage = false;
						slide.onStageSide = 'off';
						slide.moveDirection = 'off';
					}
					var transitionProgress = slide.onStageSide == 'left' ?
					(slider.stageOffset.start - slide.offset.start) / (size - spacing) :
					(slider.stageOffset.end - slide.offset.end) / (size - spacing);
					slide.transitionProgress = Math.max(Math.min(Math.abs(transitionProgress), 1), 0);
					//slide.index == 0 && log(slide.offset.start, slider.stageOffset.start,slider.stageOffset.end,slide.transitionProgress.toFixed(2))
					if ( moving ) {
						if ( slide.onStage && slide.onStageSide != 'center' && slide.moveDirection != 'off' ) {
							slide.trigger('transition:' + slide.moveDirection, slide.onStageSide, slide.transitionProgress);
							slide.trigger('transition', slide.moveDirection, slide.onStageSide, slide.transitionProgress);
						}
					}
				});
				slider.trigger('progress', -offset % totalSize / totalSize);

				// Fix the problem which causes active slide becomes blank or lack all of items after resizing browser window.
				window.jsn_es_timer && clearTimeout( window.jsn_es_timer );
				window.jsn_es_timer = setTimeout( function() {
					translate3d( slider.$wrapper.find( '.jsn-es-active' ).parent(), flow, 0 - offset );
				}, 100 );
			}

			function handleLayout() {
				if ( !activeSlide )
					return;
				if ( isCarousel ) {
				}
				if ( isCube ) {
					cube.rotation = offset / size * 90;
					var facingAngle = floor((cube.rotation % 360 + 360) % 360, 90);
					var nextAngle = (facingAngle - 90 + 360) % 360;
					var prevAngle = (facingAngle + 90 + 360) % 360;
					var activeFace = cube.faceRotation[ facingAngle ];
					var nextFace = cube.faceRotation[ nextAngle ];
					var prevFace = cube.faceRotation[ prevAngle ];
					//log( prevFace, activeFace, nextFace)
					//log( prevSlide.index, activeSlide.index, nextSlide.index)
					activeSlide.$swiper.show().appendTo(cube.faces[ activeFace ]);
					nextSlide.$swiper.show().appendTo(cube.faces[ nextFace ]);
					prevSlide.$swiper.show().appendTo(cube.faces[ prevFace ]);
					slider.$slides
						.not(activeSlide.$swiper)
						.not(nextSlide.$swiper)
						.not(prevSlide.$swiper)
						.hide();
				}
			}

			function handleTransform() {
				switch ( mode ) {
					case 'slide':
						break;
					case 'cube':
						cube.rotation = Math.round(offset / size * 90);
						rotate3d($cube, flow == 'x' ? 'y' : 'x', cube.rotation);
						break;
					case 'carousel':
						var reverse = 1;
						var hideFaceBeyond = 120;
						var rotation = Math.round(((offset) / size) * 360) * multiplier * reverse;
						var slideRotation = 360 / slides.length;
						var depth = Math.max(size, slider.outer_width - size) * reverse;
						slider.$wrapper.css({
							transform: 'scale3d(1,1,1) translate3d(0,0,' + -depth + 'px)  rotate3d(0,1,0,' + rotation + 'deg)'
						})
						_.each(slides, function ( slide, i ) {
							var centerRotation = slideRotation * i;
							var faceRotation = centerRotation + rotation;
							var ab = Math.abs(faceRotation % 360);
							if ( reverse == -1 )
								faceRotation = 0
							if ( ab < hideFaceBeyond || ab > 360 - hideFaceBeyond || slides.length < 3 )
								slide.$swiper.css({
									transform: 'rotate3d(0,1,0, ' + centerRotation + 'deg) translate3d(0,0,' + depth + 'px) rotate3d(0,1,0, ' + -faceRotation + 'deg)'
								})
							else
								slide.$swiper.css({
									transform: 'scale(0)'
								})
						})
						break;
				}
			}

			function handleAnimation() {
				var active = slider.getActiveSlide();
				var duration = active.duration;

				animation && animation.pause();

				animation = ES_Tween.progress(duration, function ( progress, ended ) {
					autoSlide && ended && slider.next();
				});
			}

			function translate3d( el, axis, value, depth ) {
				switch ( axis ) {
					case 'x':
					case 'X':
						$(el).css('transform', 'translate3d( ' + value + 'px, 0px, 0px )');
						break;
					case 'y':
					case 'Y':
						$(el).css('transform', 'translate3d( 0px, ' + value + 'px, 0px )');
						break;
					case 'z':
					case 'Z':
						$(el).css('transform', 'translate3d( 0px, 0px, ' + value + 'px )');
						break;
				}
			}

			function rotate3d( el, axis, value ) {
				switch ( axis ) {
					case 'x':
					case 'X':
						$(el).css('transform', 'rotate3d(1,0,0,' + cube.rotation + 'deg)');
						break;
					case 'y':
					case 'Y':
						$(el).css('transform', 'rotate3d(0,1,0,' + cube.rotation + 'deg)');
						break;
					case 'z':
					case 'Z':
						$(el).css('transform', 'rotate3d(0,0,1,' + cube.rotation + 'deg)');
						break;
				}
			}

			function getOffsetIndex( toOffset, from ) {
				return slider.getOffsetIndex(Math.round(toOffset / -size), from || 0)
			}

			function getIndexOffset( toIndex, from ) {
				return getOffsetIndex(toIndex, from) * size;
			}
		}
	});

	exports.ES_Cube_Controller = function ( slider ) {

        var flow = slider.model.get('layout.flow');
		var slides = slider.slides.subViews;
		var $cube = $('<div class="jsn-es-cube">').appendTo(slider.$stage)

		slider.$el.addClass('jsn-es-cube-slider');
		slider.$('.jsn-es-viewport').css('overflow', 'visible');
		slider.on('ready', function () {
			slider.getActiveSlide().trigger('transition:enter');
		});
		//slider.on('resize', function () {
		//	slider.setPerspective(slider.stage_width * 2)
		//});
		slider.on('slide:transition:enter', function ( slide ) {
			slide.$el.css('visibility', 'visible');
		});
		slider.on('slide:transition:leave', function ( slide ) {
			if (slide !== slider.activeSlide)
				slide.$el.css('visibility', 'hidden');
		});
		slider.on('slide:transition', function ( slide, direction, side, progress ) {
			var perspective = slider.stage_size * 2;
			var width = slider.stage_width;
			var height = slider.stage_height;
            var size = flow == 'y' ? height : width;
			switch ( direction ) {

				case 'out': // The active slide facing front
					var progress = side == 'left' ? -progress : progress;
					var rotation = (90 * progress);

                    if ( flow == 'x' || flow == 'X') {
                        slide.$el.css('transform', 'perspective(0px) translate3d(0,0,' + (size / 2) + 'px)');
                        $cube.css('transform', 'perspective('+perspective+'px) translate3d(0,0,' + (-size / 2) + 'px) rotate3d(0,1,0,' + rotation + 'deg)');
                    }
                    else if (flow == 'y' || flow == 'Y') {
                        slide.$el.css('transform', 'perspective(0px) translate3d(0,0,' + (size / 2) + 'px)');
                        $cube.css('transform', 'perspective('+perspective+'px) translate3d(0,0,' + (-size / 2) + 'px) rotate3d(1,0,0,' + -rotation + 'deg)');
                    }

					break;

				case 'in': // The next slide facing left or right
					var faceRotation = side == 'left' ? -90 : 90;
					var faceOffsetX = (side == 'left' ? -size : size) / 2;
                    switch (flow) {
                        case 'x':
                        case 'X':
                            slide.$el.css('transform', 'perspective(0px) translate3d(' + faceOffsetX + 'px,0,0) rotate3d(0,1,0,' + faceRotation + 'deg)');
                            break
                        case 'y':
                        case 'Y':
                            slide.$el.css('transform', 'perspective(0px) translate3d(0,' + faceOffsetX + 'px,0) rotate3d(1,0,0,' + -faceRotation + 'deg)');
                            break
                    }

					break;
			}
		});
		slider.on('resize', _.debounce(function () {
			slider.activeSlide.$el.css('visibility', 'visible');
		}, 50));

		_.chain(slides)
			.invoke('trigger', 'transition:leave')
			.pluck('$el')
			.invoke('appendTo', $cube);
	}

	exports.ES_Carousel_Controller = function ( slider ) {

		var radius;
		var slides = slider.slides.subViews;
		var $carousel = $('<div class="jsn-es-carousel">').appendTo(slider.$stage);
        var flow = slider.model.get('layout.flow');

		slider.$el
			.addClass('jsn-es-carousel-slider')
			.css('overflow', 'visible');
		slider.$viewport
			.css('overflow', 'visible')
		_.each(slides, function ( slide, index ) {
			slide.angle = index / slides.length * 360;
			slide.$el.appendTo($carousel);
			slide.load()
		})
		slider.on('resize', function () {
			$carousel.width(slider.stage_width).height(slider.stage_height);
			radius = getOuterRadius(slider.stage_size, slides.length);
		});
		slider.on('progress', function ( progress ) {
			var perspective = slider.stage_size * 2;
			var rotation = slider.rotation = 360 - progress * 360;
            switch ( flow.toLowerCase() ) {
                case 'x':
                    $carousel.css({
                        transform: 'perspective('+perspective+'px) translate3d(0,0,-' + radius + 'px) rotate3d(0,1,0,' + rotation + 'deg)'
                    });
                    _.each(slides, function ( slide ) {
                        slide.$el.css({
                            transform: 'rotate3d(0,1,0,' + (slide.angle) + 'deg) translate3d(0,0,' + radius + 'px) rotate3d(0,1,0,' + (0 - slide.angle - rotation) + 'deg)',
                            //transform: 'rotate3d(0,1,0,'+ (slide.angle) +'deg) translate3d(0,0,'+radius+'px)',
                        });
                    })
                    break;
                case 'y':
                    $carousel.css({
                        transform: 'perspective('+perspective+'px) translate3d(0,0,-' + radius + 'px) rotate3d(1,0,0,' + -rotation + 'deg)'
                    });
                    _.each(slides, function ( slide ) {
                        slide.$el.css({
                            transform: 'rotate3d(1,0,0,' + (-slide.angle) + 'deg) translate3d(0,0,' + radius + 'px) rotate3d(1,0,0,' + (slide.angle + rotation) + 'deg)',
                            //transform: 'rotate3d(0,1,0,'+ (slide.angle) +'deg) translate3d(0,0,'+radius+'px)',
                        });
                    })
                    break;
            }

		})

		function getOuterRadius( size, n ) {
			return Math.round(size / 2 / Math.sin(Math.PI / n));
		}

		function getInnerRadius( size, n ) {
			return Math.round(size / 2 / Math.tan(Math.PI / n));
		}
	}

	exports.ES_Polygon_Controller = function ( slider ) {

		var radius;
		var slides = slider.slides.subViews;
		var $carousel = $('<div class="jsn-es-carousel">').appendTo(slider.$stage);

		//slider.model
		//	.set('layout.padding', 0);
		slider.$global.hide();
		slider.$el.addClass('jsn-es-carousel-slider');
		_.each(slides, function ( slide, index ) {
			slide.angle = index / slides.length * 360;
			slide.$el.appendTo($carousel);
			slide.load()
		})
		slider.on('resize', function () {
			$carousel.width(slider.stage_width).height(slider.stage_height);
			radius = getInnerRadius(slider.stage_width, slides.length);
			//slider.setPerspective(slider.stage_width * 2)
		});
		slider.on('progress', function ( progress ) {
			var perspective = slider.stage_size * 2;
			var rotation = slider.rotation = 360 - progress * 360;
			$carousel.css({
				transform: 'perspective('+perspective+'px) translate3d(0,0,-' + radius + 'px) rotate3d(0,1,0,' + rotation + 'deg)'
			});
			_.each(slides, function ( slide ) {
				slide.$el.css({
					transform: 'perspective(0px) rotate3d(0,1,0,' + (slide.angle) + 'deg) translate3d(0,0,' + radius + 'px)',
				});
			})
		})

		function getOuterRadius( size, n ) {
			return Math.round(size / 2 / Math.sin(Math.PI / n));
		}

		function getInnerRadius( size, n ) {
			return Math.round(size / 2 / Math.tan(Math.PI / n));
		}
	}

	exports.ES_Coverflow_Controller = function ( slider ) {

		var slides = slider.slides.subViews;
		var angle = 60;
		var depth = 500;

		//slider.model
		//	.set('layout.padding', 0);
		slider.$viewport.css('perspective-origin', '50% 60%')

		slider.on('ready', function () {

		})
		slider.on('resize', function () {
			//slider.setPerspective(slider.outer_width)
			var perspective = slider.outer_width;
			depth = slider.outer_width;
			slider.$stage.css('transform', 'perspective('+perspective+'px) translate3d(0,0,-' + depth + 'px)')
			slider.getActiveSlide().$el.css('transform', 'perspective(0px) translate3d(0,0,' + depth + 'px)')
			//slider.change(slider.activeIndex)
		});
		slider.on('slide:transition', function ( slide, direction, side, progress ) {
			var perspective = slider.outer_width;
			if ( slider.activeIndex == slide.index ) {
				_.each(slides, function ( otherSlide ) {
					if ( otherSlide.offsetIndex > slide.offsetIndex + 1 )
						otherSlide.$el.css('transform', 'perspective(0px) rotate3d(0,1,0,-' + angle + 'deg)');
					if ( otherSlide.offsetIndex < slide.offsetIndex - 1 )
						otherSlide.$el.css('transform', 'perspective(0px) rotate3d(0,1,0,' + angle + 'deg)');
				})
			}
			var rotation = progress * angle;
			var position = (1 - progress) * depth;
			switch ( side ) {
				case 'left':
					slide.$el.css('transform', 'perspective(0px) translate3d(0,0,' + position + 'px) rotate3d(0,1,0,' + (rotation) + 'deg)');
					break;
				case 'right':
					slide.$el.css('transform', 'perspective(0px) translate3d(0,0,' + position + 'px) rotate3d(0,1,0,' + (-rotation) + 'deg)');
					break;
			}
		});
	}

	exports.ES_Scroll_Controller = function ( slider ) {
		var bounds, height, offset, offsetY, bottomY, ready;
		var parallaxDepth = parseFloat(slider.model.get('background.parallax_depth'));
		slider.on('resize', function () {
			ready = true;
			height = slider.$background.height();
			offset = slider.$background.offset();
			offsetY = offset.top;
			bottomY = offsetY + height;
		})
		slider.listenTo(ES_Events, 'window.scroll', function ( e, data ) {
			if ( !ready )
				return;
			var scrollY = window.scrollY;
			if ( scrollY < offsetY )
				return slider.$background.css('top', 0);
			if ( scrollY > bottomY )
				return slider.$background.css('top', height * 0.5);
			var parallaxOffset = (scrollY - offsetY) * parallaxDepth;
			slider.$background.css('top', parallaxOffset);
		})
	};

	exports.ES_Parallax_Controller = function ( slider ) {
	};

	$(window).scroll(function ( e, data ) {
		requestAnimationFrame(function () {
			ES_Events.trigger('window.scroll', e, data)
		})
	});

	//var log = log.bind(console)

	var transformKey, transformKeys = [ "transform", "msTransform", "webkitTransform", "mozTransform", "oTransform" ];
	var filterKey, filterKeys = [ "filter", "msFilter", "webkitFilter", "mozFilter", "oFilter" ];

	function transform( el, value ) {
		if ( !transformKey && document.body && document.body.style ) {
			while ( !transformKey && transformKeys.length ) {
				var key = transformKeys.pop();
				if ( typeof document.body.style[ key ] !== 'undefined' )
					transformKey = key;
			}
		}
		el.style[ transformKey ] = value;
	}

	function filter( el, value ) {
		if ( !filterKey && document.body && document.body.style ) {
			while ( !filterKey && filterKeys.length ) {
				var key = filterKeys.pop();
				if ( typeof document.body.style[ key ] !== 'undefined' )
					filterKey = key;
			}
		}
		el.style[ filterKey ] = value;
	}

	function round( n, closest ) {
		_.isUndefined(closest) && (closest = 1);
		return Math.round(n / closest) * closest;
	};
	function floor( n, closest ) {
		_.isUndefined(closest) && (closest = 1);
		return Math.floor(n / closest) * closest;
	};
	function ceil( n, closest ) {
		_.isUndefined(closest) && (closest = 1);
		return Math.ceil(n / closest) * closest;
	};

}(this, jQuery, _, JSNES_Backbone);


/* FILE: /plugins/system/easyslider/assets/js/easyslider.js */
void function ( exports, $, _, Backbone ) {

	var log = _.noop;
	//var log = log.bind(console)

	var YT_API_LOADED = false;

	var sliders = {};

	var View = B.View.extend({
		constructor: function ES_View() {
			B.View.apply(this, arguments);
		},
		show: function () {
			this.$el.removeClass('jsn-es-hidden').css('opacity', 1);
			return this;
		},
		hide: function () {
			this.$el.addClass('jsn-es-hidden');
			return this;
		},
	});

    exports.ES_BG_Parallax =  function($el, $effect, options){
        var defaultOpt = {
            strength: 25,
            scale: 1.15,
            animationSpeed: "100ms",
            type: 'mouse-move',
        };

        options = _.extend(defaultOpt, options);

		var h = window.innerHeight,
				w = window.innerWidth,
				sliderW = $('.jsn-es-stage').width(),
				sliderH = $('.jsn-es-stage').height(),
				sh = options.strength / h,
				sw = options.strength / w,
				ratioW = (sliderW + options.strength) / sliderW,
				ratioH = (sliderH + options.strength) / sliderH;

		options.scale = ratioW > ratioH ? ratioW : ratioH;

        $effect.css({
			'transform': 'scale(' + options.scale + ')',
		})

		$effect.data('bakcss', $effect.attr('style'))
        if ( options.type == 'mouse-move') {
            $('body').on('mouseenter', function(e) {
                $effect.hasClass('background-active') && $effect.css({
                    "-webkit-transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0,0)",
                    "-moz-transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0,0)",
                    "-o-transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0,0)",
                    "transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0,0)",
                    "-webkit-transition": "-webkit-transform " + options.animationSpeed + " linear",
                    "-moz-transition": "-moz-transform " + options.animationSpeed + " linear",
                    "-o-transition": "-o-transform " + options.animationSpeed + " linear",
                    "transition": "transform " + options.animationSpeed + " linear"
                }).on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(){

                    // This will signal the mousemove below to execute when the scaling animation stops
                    $effect.removeClass("ibg-entering")
                });
            }).on('mousemove', function(e){
                // This condition prevents transition from causing the movement of the background to lag
                if (!$effect.hasClass("exiting")) {
                    var pageX = e.pageX || e.clientX,
                        pageY = e.pageY || e.clientY,
                        pageX = pageX - (w / 2),
                        pageY = pageY - (h / 2),
                        newX = (sw * pageX) * - 1,
                        newY = (sh * pageY) * - 1;
                    // Use matrix to move the background from its origin
                    // Also, disable transition to prevent lag
                    $effect.hasClass('background-active') && $effect.css({
                        "-webkit-transform": "matrix(" + options.scale + ",0,0," + options.scale + "," + newX + "," + newY + ")",
                        "-moz-transform": "matrix(" + options.scale + ",0,0," + options.scale + "," + newX + "," + newY + ")",
                        "-o-transform": "matrix(" + options.scale + ",0,0," + options.scale + "," + newX + "," + newY + ")",
                        "transform": "matrix(" + options.scale + ",0,0," + options.scale + "," + newX + "," + newY + ")",
                        "-webkit-transition": "none",
                        "-moz-transition": "none",
                        "-o-transition": "none",
                        "transition": "none"
                    });
                }
            }).on('mouseleave', function(e) {
                // Same condition applies as mouseenter. Rescale the background back to its original scale
                if($effect.data('bakcss')) {
                    //$effect.attr('style', $effect.data('bakcss'));
                }

            });
        }
        else if( options.type == 'scroll' ){
            var viewportOffet = $el.parents('.jsn-es-viewport').offset();
            var totalHeight = sliderH + h;
            options.scale = (options.strength + sliderH) / sliderH;
            $effect.css({
                'transform-origin': '50% 100%',
                'transform': 'scale(' + options.scale + ')',
            })
            $effect.find('.slide-background-effect').css({
                'background-position': '50% 100%',
            });
            $effect.css({
                'transform-origin': '50% 100%',
            })
            var setScrollCSS = function($effect) {
                var scrollTop = $(window).scrollTop();
                if ( viewportOffet.top - scrollTop <= h && viewportOffet.top - scrollTop + sliderH >=0) {

                    var translatedY = options.strength * (h - (viewportOffet.top - scrollTop)) / totalHeight

                    //translatedY = 0;
                    $effect.css({
                        "-webkit-transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0," + translatedY + ")",
                        "-moz-transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0," + translatedY + ")",
                        "-o-transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0," + translatedY + ")",
                        "transform": "matrix(" + options.scale + ",0,0," + options.scale + ",0," + translatedY + ")",
                        "-webkit-transition": "none",
                        "-moz-transition": "none",
                        "-o-transition": "none",
                        "transition": "none"
                    });
                }
            }
            setScrollCSS($effect);
			$(window).on('scroll', function(){
                setScrollCSS($effect);
            })
        }

    }

	var VimeoPlayer = View.extend({
		events: {},
		initialize: function (options) {

			this.playerVars = options.playerVars;

			_.bindAll(this, 'onMessageReceived');

			this.playerOrigin = '*';

			if ( window.addEventListener ) {
				window.addEventListener('message', this.onMessageReceived, false);
			}
			else {
				window.attachEvent('onmessage', this.onMessageReceived, false);
			}
		},
		postMessage: function ( action, value ) {
			var data = {
				method: action
			};
			if ( value ) {
				data.value = value;
			}
			var message = JSON.stringify(data);
			this.el.contentWindow.postMessage(message, this.playerOrigin);
		},
		onMessageReceived: function ( event ) {
			// Handle messages from the vimeo player only
			if ( !(/^https?:\/\/player.vimeo.com/).test(event.origin) ) {
				return;
			}

			if ( this.playerOrigin === '*' ) {
				this.playerOrigin = event.origin;
			}

			var data = JSON.parse(event.data);
			switch ( data.event ) {
				case 'ready':
					this.postMessage('addEventListener', 'play');
					this.postMessage('addEventListener', 'pause');
					this.postMessage('addEventListener', 'finish');
					//this.postMessage('addEventListener', 'playProgress');



					if ( this.playerVars.mute ) {
						this.postMessage('setVolume', '0')
					}
					else {
						var value = '0.8';
						if ( this.playerVars.volume && parseFloat(this.playerVars.volume) > 0 ) {
							value = parseFloat(this.playerVars.volume) / 100;
						}
						this.postMessage('setVolume', value)
					}
					this.postMessage('setLoop', this.playerVars.loop);
					this.trigger('ready');
					break;

				case 'playProgress':
					this.trigger('progress');
					break;

				case 'pause':
					this.trigger('paused');
					break;

				case 'finish':
					this.trigger('ended');
					break;
				case 'play':
					this.trigger('playing');
					break;
			}
		},
		playVideo: function () {
			this.postMessage('play');
		},
		pauseVideo: function () {
			this.postMessage('pause');
		},
		seekTo: function ( time ) {
			this.postMessage('seekTo', time / 1000);
		},
	});

	var BackgroundView = View.extend({
		constructor: function ES_BackgroundView( options ) {
			View.call(this, options)
		},
		bindings: [
			{
				type: 'style',
				selector: '.slide-background-effect',
				attr: {
					'backgroundColor': 'color',
					'backgroundImage': 'image.src',
					'backgroundPosition': 'position',
					'backgroundRepeat': 'repeat',
					'backgroundSize': 'size',
				},
				parse: function ( value, key ) {
					switch ( key ) {
						case 'backgroundImage':
							return value ? 'url(' + value + ')' : '';
						case 'backgroundRepeat':
							return value ? 'repeat' : 'no-repeat';
						default:
							return value;
					}
				}
			}
		],

		initialize: function () {
			this.videoLoaded = false;
			_.bindAll(this, 'resizeVideo');
			Object.defineProperty(this, 'slideView', {
				get: function () {
					if ( typeof this.isItem !== 'undefined' && this.isItem )
						return this.superView.superView.superView;
					else
						return this.superView;
				}
			})

			if ( this.model.get('image.src') ) {
				this.hasImage = true;
				this.imgLoading = false;
				this.imgLoaded = false;
			}

			this.on('video:playing', function () {
				this.videoPlaying = true;
			});
			this.on('video:ended', function () {
				this.videoPlaying = false;
				this.slideView.trigger('video:ended');
			});


		},
        ready: function(){
            /**
             * parallax effects
             *
             */
            if ( this.model.get('parallax.enable') ){//background-active
                var parallax = this.model.get('parallax').toJSON();
                _.delay(_.bind(function(){
                    var $parent = this.$el.parents('.jsn-es-background');
                    var settings = {
                        strength: parallax.depth,
                        scale: 1.15,
                        type: parallax.type
                    };
                    ES_BG_Parallax($parent, this.$el.parent(), settings)

                },(this)),1000)
            }


            /*
             *
             * */
        },
		loadImage: function () {
			if ( !this.hasImage || this.imgLoading || this.imgLoaded )
				return;
			var self = this;
			this.imgLoading = true;
			//this.$loading = $('<div class="jsn-es-loading fa-spin" />')
			//	.appendTo(this.el);
			var img = new Image;
			img.onload = function () {
				self.imgLoaded = true;
                self.$el.css('background-image', 'url(' + img.src + ')')

			}
			img.onerror = function () {
				console.warn('Failed to load image from src:', img.src);
				//self.$loading.remove();
			}

			var imgSrc = this.model.get('image.src');

			var re = new RegExp("^(http|https)://", "i");

			if ( re.test(imgSrc) ) {
				// do nothing
			}
			else {
				imgSrc = this.rootView.rootURL + imgSrc;
			}

			img.src = imgSrc;
		},
		loadVideo: function (isSlideBG) {
            this.isSlideBG = isSlideBG;
            this.isOnMobile = /(iPad|iPhone|iPod|Android)/g.test(navigator.userAgent);
            this.isAndroid= /(Android)/g.test(navigator.userAgent);
			if ( this.videoLoaded )
				return;

			this.isItem && this.listenTo(this.superView, 'start', function () {
				log('anim start');
				if (this.slideView.isActive() && this.model.get('video.autoplay'))
					this.playVideo();
			});

			if ( this.model.get('video.selector') == 'provider' ) {
                if ( this.isSlideBG && this.isOnMobile)
                    console.log('Mobile detected, may be video play not good because of your browser');
                //    return;

				if ( this.model.get('video.youtube') )
					return this.loadYoutubeVideo();
				if ( this.model.get('video.vimeo') )
					return this.loadVimeoVideo();
			}
            else if ( this.model.get('video.selector') == 'local' ) {
				if (this.model.get('video.mp4') || this.model.get('video.ogg') || this.model.get('video.webm'))
					return this.loadLocalVideo();
			}
            else {
                if ( this.isSlideBG && this.isOnMobile)
                	console.log('Mobile detected, may be video play not good because of your browser');
                 //   return;
                if ( this.model.get('video.youtube') )
                    return this.loadYoutubeVideo();
                if ( this.model.get('video.vimeo') )
                    return this.loadVimeoVideo();
                if (this.model.get('video.mp4') || this.model.get('video.ogg') || this.model.get('video.webm'))
                    return this.loadLocalVideo();
            }
		},

		loadYoutubeVideo: function () {
			var view = this;
            var video = this.model.get('video').toJSON();
           // if ( video.autoplay )
               // this.$el.hide();

			this.videoLoaded = true;
			if ( !YT_API_LOADED )
				return this.delay(this.loadYoutubeVideo, 1000);
			//console.log('Rendering Youtube Video...');
			this.yt_player_id = _.uniqueId('yt-player-');

			$('<div class="jsn-es-video jsn-es-youtube-video">')
				.attr('id', this.yt_player_id)
				.appendTo(this.el);

			this.yt_player = new YT.Player(this.yt_player_id, {
				width: '100%',
				height: '100%',
				videoId: this.model.get('video.youtubeID'),
				playerVars: {
					autohide: 1,
					autoplay: 0,
					controls: this.isAndroid ? 1 : ( video.controls ? 1 : 0 ),
					// TODO: Check youtube loop problem
					loop: video.loop ? 1 : 0,
					cc_load_policy: 0,
					iv_load_policy: 3,
					modestbranding: 1,
					rel: 0,
					showinfo: 0
				},
				events: {
					'onReady': _.bind(function () {
                        this.player = this.yt_player;
                        //this.yt_player.stopVideo();
                        if ( view.superView.$el.hasClass('jsn-es-item')) {
                            view.superView.$('.item-content').remove();
                        }

                        if ( video.mute ) {
                            this.yt_player.mute();
                        }
                        else {
                            this.yt_player.unMute();
                            this.yt_player.setVolume((video.volume ? video.volume : 80));
                        }
                        if (video.autoplay && this.slideView.isActive()) {
                            view.resizeVideo();
                            //this.yt_player.seekTo(1)
                            this.yt_player.playVideo();
                            setTimeout( function(){
                                view.$el.show();
                            }, 500)
                        }

					}, this),
					'onStateChange': _.bind(function ( state ) {
						switch ( state.data ) {
							case 0:
								this.trigger('video:ended');
								break;
							case 1:
								this.trigger('video:playing');
								break;
							case 2:
								this.trigger('video:paused');
								break;
							case 3:
								this.trigger('video:buffering');
								break;
							case 5:
								this.trigger('video:cued');
								break;
							case -1:
								break;
						}
					}, this)
				}
			});
			this.$yt_player = this.$('iframe');

            this.resizeVideo();

		},
		loadVimeoVideo: function () {
			//hide item-content
			var view = this;
            var video = this.model.get('video').toJSON();
            if ( video.autoplay )
                this.$el.hide();
			this.videoLoaded = true;
			this.isItem && this.superView.$('.item-content').hide();

			var iframe = this.$vimeo_player = $('<iframe src="https://player.vimeo.com/video/' + this.model.get('video.vimeoID')
				+ '?api=1'
				+ '&autoplay=' + ( video.autoplay ? 1 : 0)
				//+ '&autoplay=0'
				+ '&controls=' + (video.controls ? 1 : 0)
				+ '" frameborder="0" width="100%" height="100%" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>');
			iframe
				.appendTo(this.el);

			this.player = new VimeoPlayer({
				el: iframe,
				playerVars: video
			});
			this.player.on('ready', function () {

				if (video.autoplay) {
					view.resizeVideo();
                    view.playVideo();
                    setTimeout( function(){
                        view.$el.show();
                    }, 500)
                }
			});
			this.player.on('playing', function () {
				view.trigger('video:playing')
			});
			this.player.on('paused', function () {
				view.trigger('video:paused')
			});
			this.player.on('ended', function () {
				view.trigger('video:ended')
			});
            if ( this.superView.$el.hasClass('jsn-es-item')) {
                this.superView.$('.item-content').remove();
            }
            else {
                this.resizeVideo();
            }
		},
		loadLocalVideo: function () {
			this.videoLoaded = true;
			this.$video = $('<video class="jsn-es-video">')
				.appendTo(this.el)
				.attr({
					width: '100%',
					height: '100%',
				})
				.prop({
					controls: this.model.get('video.controls'),
					autoplay: false,
					loop: this.model.get('video.loop'),
				});
			this.$video.get(0).volume = 1;
			if ( this.model.get('video.mute') ) {
				this.$video.prop('muted', true);
			}

			_.each([ 'mp4', 'ogg', 'webm' ], function ( type ) {
				if ( this.model.get('video').get(type) )
					$('<source>')
						.attr('type', 'video/' + type)
						.attr('src', this.model.get('video').get(type))
						.appendTo(this.$video);
			}, this);

			this.player = {};
			this.player.playVideo = _.bind(function () {
				this.$video.get(0).play();
			}, this);
			this.player.pauseVideo = _.bind(function () {
				this.$video.get(0).pause();
			}, this);
			this.player.seekTo = _.bind(function ( time ) {
				this.$video.get(0).currentTime = time;
			}, this);

            if ( this.superView.$el.hasClass('jsn-es-item')) {
                this.superView.$('.item-content').remove();
            }
			this.$video.get(0).addEventListener('play', _.bind(function ( e ) {
				this.trigger('video:playing')
			}, this));
			this.$video.get(0).addEventListener('pause', _.bind(function ( e ) {
				this.trigger('video:paused')
			}, this));
			this.$video.get(0).addEventListener('ended', _.bind(function ( e ) {
				this.trigger('video:ended')
			}, this));

			if ( this.model.get('video.autoplay')) {
				this.player.playVideo();
			}
            this.resizeVideo()
		},

		resizeVideo: function ( ) {
            var width = this.$el.width();
            var height = this.$el.height();

            if ( !this.$video && !this.$yt_player && !this.$vimeo_player)
				return;

			// In case of local video that using video tag which only need to be resized once
			//if ( this.videoResized )
			//	return;

			if ( !width || !height )
				return;

			var ratio = width / height;

            var videoRatio = 0;
            var $video;
			if ( this.$yt_player ) {
				videoRatio = parseFloat( this.model.get('video.youtubeRatio') );
                $video = this.$yt_player;
			}
			if ( this.$vimeo_player ) {
				videoRatio = parseFloat( this.model.get('video.vimeoRatio') );
                $video = this.$vimeo_player;
			}
            if ( this.$video ) {
                this.$video.removeAttr('width').removeAttr('height').css({'min-width': '100%', 'min-height': '100%'})
                //this.videoResized = true;
            }
			// If video need to be resized to fill the container
            if ( ratio && videoRatio) {
	            // If the video width is smaller than the container width
	            // then scale the video horizontallly to fit left and right
                if ( videoRatio < ratio ) {
                    $video
                        .attr('width', width + 6)
                        .attr('height', width / videoRatio + 6)
                        .css('margin', '-3px');
                }
                // If the video height is smaller than the container height
                // then scale the video vertically to fit top and bottom
                else if ( videoRatio < ratio ) {
	                $video
		                .attr('width', height * videoRatio  + 6)
		                .attr('height', height + 6)
		                .css('margin', '-3px');
                }
            }
		},
		playVideo: function () {
			var view = this;
			if ( this.videoLoaded && this.slideView.isActive() ) {
				var interval = setInterval(function () {
					if ( typeof view.player !== 'undefined' ) {
						view.player.playVideo();
						clearInterval(interval);
					}
				}, 100);
			}
		},
		pauseVideo: function () {
			if ( this.videoLoaded ) {
				var view = this;
				var interval = setInterval(function () {
					if ( typeof view.player !== 'undefined' ) {
						view.player.pauseVideo();
						clearInterval(interval);
					}
				}, 100);
			}
		},
		stopVideo: function () {
			if ( this.player ) {
				try {
                    this.player.stopVideo();
				}
				catch (e)
				{
                    this.player.seekTo(0.1);
                    this.player.pauseVideo();
				}

			}
		},
        renderProgress: function( progress ) {
            var data = this.model.toJSON();
            var kenburn = this.model.get('kenburn').toJSON();
            // position: 50% 50%
            var from = {};
            from.position = _.parseBackgroundPos(data.position, this.$el);
            from.size = _.parseBackgroundPos(data.size, this.$el);

            kenburn.position = _.parseBackgroundPos(kenburn.position, this.$el);
            kenburn.size = _.parseBackgroundPos(kenburn.size, this.$el);

            var css = {};

            css.positionX = kenburn.position.length == 2 && from.position.length == 2 ? ( ( kenburn.position[0] - from.position[0] ) * progress) + from.position[0]  + '%' : '';
            css.positionY = kenburn.position.length == 2 && from.position.length == 2 ? ( ( kenburn.position[1] - from.position[1] ) * progress) + from.position[1]  + '%' : '';
            if ( from.size && kenburn.size) {
                css.size = ( kenburn.size[0] - from.size[0]  ) * progress + from.size[0] + '%';
            }
            this.$el.css({
                //'transition': 'all 0.3s ' + kenburn.easing,
                'background-position-x': css.positionX,
                'background-position-y': css.positionY,
                'background-size': css.size,
                'transform': 'rotate(' + data.position.rotate + 'deg)',
            })
        },
        resetBackgroundPos: function(){
            var data = this.model.toJSON();
            this.$el.css({
                transition: 'none',
                'background-position': data.position,
                'background-size': data.size,
                'transform': 'rotate(0deg)',
            })
        },
        renderBGTransition: function( duration ){
            var kenburn = this.model.get('kenburn').toJSON();
            var data = this.model.toJSON();


            if ( kenburn.enable) {
                kenburn.position = _.parseBackgroundPos(kenburn.position, this.$el);
                kenburn.size = _.parseBackgroundPos(kenburn.size, this.$el);
                data.position = _.parseBackgroundPos(data.position, this.$el);

				var json = {};
                json['transition']          = 'all ' + kenburn.duration + 's ' + kenburn.easing;
                json['-ms-transition']      = 'all ' + kenburn.duration + 's ' + kenburn.easing;
                json['-o-transition']       = 'all ' + kenburn.duration + 's ' + kenburn.easing;
                json['-webkit-transition']  = 'all ' + kenburn.duration + 's ' + kenburn.easing;
                json['-moz-transition']     = 'all ' + kenburn.duration + 's ' + kenburn.easing;

                if ( data.position[0] != kenburn.position[0] && kenburn.position.length > 0 && kenburn.position[0] != 0) {
                    json['background-position-x'] = kenburn.position[0] + '%';
                }
                if ( data.position[1] != kenburn.position[1] && kenburn.position.length > 1 && kenburn.position[1] != 0) {
                    json['background-position-y'] = kenburn.position[1] + '%';
                }
                if ( kenburn.size[0] != 0) {
                    json['transform'] = 'scale(' + (kenburn.size / 100) + ')';
                }
                this.$el.css(json)
            }
        },

	});

	var NavView = View.extend({
		ready: function ( options ) {
			var enable = this.model.get('enable');
			if ( !enable || this.rootView.model.get('slides').length == 1 )
				return this.$el.hide();
            else if ( this.rootView.model.get('slides').where({hide: false}).length <= 1 ) {
                return this.$el.hide();
            }
			var style = this.model.get('style');
			var template = ES_Nav.templates[ style ];
			this.$el
				.addClass('jsn-es-nav-' + style)
				.css('transform-style', 'flat');
			this.$('.jsn-es-next').html(template.next);
			this.$('.jsn-es-prev').html(template.prev);
			this.listenTo(this.superView, 'ready', this.change);
			this.listenTo(this.superView.model, 'change:slides.active', this.change);
		},
		change: function () {
			var self = this;
			var next = this.superView.getNextSlide();
			var prev = this.superView.getPrevSlide();

			//new Promise(function( resolve, reject ) {
			//	if (next.thumbSource && prev.thumbSource)
			//	    resolve(next.thumbSource,prev.thumbSource);
			//	else {
			//		var content = self.$('.jsn-es-next div').length ? self.$('.jsn-es-next div') : self.$('.jsn-es-next');
			//		var width = content.width();
			//		var height = content.height();
			//
			//		$.getImageThumb(next.model.get('background.image.src'), width, height, function ( src1 ) {
			//			next.thumbSource = src1;
			//			$.getImageThumb(prev.model.get('background.image.src'), width, height, function ( src2 ) {
			//				prev.thumbSource = src2;
			//				resolve(src1,src2);
			//			})
			//		})
			//	}
			//})
			//	.then(function( nextSrc, prevSrc ) {
			//		self.$('.jsn-es-next img').attr('src', nextSrc);
			//		self.$('.jsn-es-prev img').attr('src', prevSrc);
			//	});
			this.$('.jsn-es-next .jsn-es-name').text(next.model.get('name') || '');
			this.$('.jsn-es-prev .jsn-es-name').text(prev.model.get('name') || '');
		}
	});

	var PaginationView = B.CollectionView.extend({
		ready: function () {
			var enable = this.model.get('enable');
			if ( !enable || this.rootView.model.get('slides').length == 1 ) {
                return this.$el.parent().hide();
            }
			else if ( this.rootView.model.get('slides').where({hide: false}).length <= 1 ) {
                return this.$el.parent().hide();
            }

			var style = this.model.get('style');
			var size = this.model.get('size') || '';
			var border = this.model.get('border') || '';
			var spacing = this.model.get('spacing');
			this.$el.parent()
				.addClass('dotstyle dotstyle-' + style);
			this.$('li')
				.width(size)
				.height(size)
				.css('margin', '0 ' + (spacing / 2) + 'px');
		},
		itemView: View.extend({
			events: {
				'touchstart': function ( e ) {
					this.rootView.change(this.$el.index())
					e.preventDefault();
					e.stopPropagation();
				},
				'mousedown': function ( e ) {
					this.rootView.change(this.$el.index())
				}
			},
			modelEvents: {
				'change:active': 'setActive'
			},
			ready: function () {
				this.$('a').text(this.model.get('name') || this.$el.index() + 1)
				this.setActive();
			},
			setActive: function () {
				if ( this.model.index() < this.superView.lastIndex )
					this.$el.attr('class', 'current-from-right');
				else
					this.$el.attr('class', '');

				this.delay(function () {
					if ( this.model.get('active') )
						this.$el.addClass('current');
					else
						this.$el.removeClass('current');
					this.superView.lastIndex = this.model.index();
				}, 25)
			}
		})
	});

	var ItemView = View.extend({
		constructor: function ES_ItemView( options ) {
			View.call(this, options)
			EasySlider.fonts.load(this.model.get('style.font.family'))
		},
		views: {
			'background model:style.background > .item-background': BackgroundView.extend()
		},
		bindings: [
			{
				type: 'class',
				attr: {
					'hidden': 'hidden',
				}
			},
			{
				type: 'style',
				attr: {
					'visibility': 'style.visible',
					'zIndex': 'index',
					'left': 'style.position.x',
					'top': 'style.position.y',
				},
				parse: function ( value, key ) {
					switch ( key ) {
						case 'visibility' :
							return value ? 'visible' : 'hidden';
						case 'left':
						case 'top':
							return value * 100 + '%';
						default :
							return value;
					}
				}
			},
			{
				type: 'attr',
				attr: {
					'id': 'attr.id',
					'class': 'attr.class',
				},
				parse: function (value, key, view) {
					switch (key) {
						case 'class':
							return view.$el.attr('class') + ' ' + value;
						default:
							return value;
					}
				}
			},
			/*{
				selector: '.item-offset',
				type: 'style',
				attr: {
					//'transform': 'style.offset',
					'width': 'style.width',
					'height': 'style.height',
				},
				parse: function ( value, key ) {
					switch ( key ) {
						case 'transform':
							return 'translate3d(' + value.x + 'px,' + value.y + 'px,' + value.z + 'px)';
						default :
							return value;
					}
				}
			},*/
			{
				selector: '.item-container',
				type: 'style',
				attr: {
					'borderWidth': 'style.border.width',
					'borderStyle': 'style.border.style',
					'borderColor': 'style.border.color',
					'opacity': 'style.opacity',
					'borderRadius': 'style.border.radius',
					'boxShadow': 'style.box_shadows',
				},
				parse: function ( value, key ) {
					if( value ) {
						switch ( key ) {
							case 'boxShadow':
								var html = '';
								if (value) {
									_(value).each(function(shadow, i){
										html += shadow.x + 'px ' + shadow.y + 'px ' + shadow.blur + 'px ' + shadow.color + (shadow.inset ? ' inset' : '') + (i == value.length - 1 ? '' : ', ') ;
									})
								}
								return html;
							default:
								return value;
						}
					}
				}
			},
			{
				selector: '.item-content',
				type: 'html',
				attr: 'content'
			},
			{
				selector: '.item-content',
				type: 'style',
				attr: {
					'color': 'style.font.color',
					'fontFamily': 'style.font.family',
					//'fontSize': 'style.font.size',
					'fontWeight': 'style.font.weight',
					'fontStyle': 'style.font.style',
					'lineHeight': 'style.line_height',
					'letterSpacing': 'style.letter_spacing',
					'textDecoration': 'style.text_decoration',
					'paddingTop': 'style.padding.top',
					'paddingLeft': 'style.padding.left',
					'paddingRight': 'style.padding.right',
					'paddingBottom': 'style.padding.bottom',

					'textAlign': 'style.align_h',
					'textShadow': 'style.text_shadows',

					'alignItems': 'style.flex.alignItems',
					'alignContent': 'style.flex.alignContent',
					'justifyContent': 'style.flex.justifyContent',
					'flexDirection': 'style.flex.direction',
					'flexWrap': 'style.flex.wrap',
					'flexBasis': 'style.flex.basis',
					'flexGrow': 'style.flex.grow',
				},
				parse: function ( value, key ) {
					switch ( key ) {
						case 'fontSize':
                            //console.log(this.$el.data('scale_factor'))
							return parseFloat(this.$el.data('scale_factor')) * value + 'px';
						case 'flexBasis':
							return value + 'px';
						case 'flexGrow':
							return value ? '1' : '0';
						case 'textShadow':
							var html = '';
							if (value) {
								_(value).each(function(shadow, i){
									html += shadow.x + 'px ' + shadow.y + 'px ' + shadow.blur + 'px ' + shadow.color + (shadow.inset ? ' inset' : '') + (i == value.length - 1 ? '' : ', ') ;
								})
							}
							return html;
						default :
							return value;
					}
				}
			},
			{
				selector: '.item-background',
				type: 'style',
				attr: {
					'borderRadius': 'style.border.radius',
				}
			},
		],
		events: {
			'click .item-container': function(e) {
				if (!this.isLinkedItem)
					return;
				var href = this.model.get('attr.href');
				if (href.indexOf('@') == 0) {
					href = href.replace(/([A-Za-z@\-_]+)/g, '');
					if (href || !_.isNaN(href)) {
						this.rootView.change(parseInt(href) - 1)
					}
				}
			}
		},
		initialize: function () {
            this.$el.data('scale_factor', 1)
			this.animStarted = false;
			this.animEnded = false;
            var view = this;
			
			this.$el.on('resize:item', function(e, scale_factor){
                view.resize(scale_factor)
			})
		},
		ready: function () {
			this.slideView = this.superView.superView;
			this.background.isItem = true;

			if (this.model.get('attr.href')) {
				this.isLinkedItem = true;
				this.$el.addClass('jsn-es-linked-item');

				var href = this.model.get('attr.href');
				if (href.indexOf('@') != 0) {
					this.$('a.item-container')
							.attr('href', href)
							.attr('target', this.model.get('attr.target'));
				}
			}

			var sliderType = parseInt(this.model.root.get('layout.type'));
			var timelineMode = parseInt(this.model.root.get('timeline.mode'));

			this.__dataBinding.updateView();

			this.$animation = this.$('.item-animation')
			this.$animation.css('opacity', 1)

			switch ( parseInt(this.model.get('animation.in.split')) ) {
				case 1:
					this.$inElements = this.$animation.find('.item-content > *');
					break;
				case 2:
					this.$inElements = this.$animation.find('.split-word');
					break;
				case 3:
					this.$inElements = this.$animation.find('.split-char');
					break;
				default:
					this.$inElements = this.$animation;
			}
			switch ( parseInt(this.model.get('animation.out.split')) ) {
				case 1:
					this.$outElements = this.$animation.find('.item-content > *');
					break;
				case 2:
					this.$outElements = this.$animation.find('.split-word');
					break;
				case 3:
					this.$outElements = this.$animation.find('.split-char');
					break;
				default:
					this.$outElements = this.$animation;
			}

			var tweenIn = this.model.get('animation.in').getTweenObj();
			var tweenOut = this.model.get('animation.out').getTweenObj();
			//tweenIn.delay = 0;
			//switch (sliderType) {
			//	case 2:
			//		//if (timelineMode == 1)
			//		tweenIn.delay = 0;
			//		tweenOut.delay = 0;
			//		break;
			//}
			// If animation in has animation
			if (tweenIn.duration) {
				this.animation_in = ES_Timeline({ align: 'normal', paused: true })
					.staggerFrom(this.$inElements, this.model.get('animation.in.splitDelay'), tweenIn, { paused: true });
			}
			// If animation in doesn't have duration
			else {
				this.animation_in = ES_Tween.from(this.$inElements,  _.pick(tweenIn, 'duration','delay'), { paused: true });
				// In case this animation has delay, then opacity needs to be 0, if delay == 0 then leave opacity as default
				// which is 1 so the item appears with slide transition
				if (tweenIn.delay > 0) {
					this.animation_in.options.from.opacity = 0;
				}
			}
			if (tweenOut.duration) {
				this.animation_out = ES_Timeline({ align: 'normal ', paused: true })
					.staggerTo(this.$outElements, this.model.get('animation.out.splitDelay'), tweenOut, { paused: true });
			}
			else {
				this.animation_out = ES_Tween.to(this.$outElements, _.pick(tweenOut, 'duration','delay'), { paused: true });
			}
			this.animation = ES_Timeline({ align: 'normal', paused: true })
					.add(this.animation_in)
					.add(this.animation_out);
            //this.$('.item-offset').get(0).style.height = ( Math.ceil( this.$('.item-offset').get(0).offsetHeight / 2 ) * 2 ) + "px";
            //this.$('.item-offset').get(0).style.width = ( Math.ceil( this.$('.item-offset').get(0).offsetWidth/ 2 ) * 2 ) + "px";
            //console.log(this.animation)
            this.hasYoutubeVideo()
		},
		load: function () {
			if ( !this.loaded ) {
				this.loaded = true;
                if ( !this.background.model.get('video.youtubeID') && !this.background.model.get('video.vimeoID') && this.background.model.get('video.selector') == 'provider')
				    this.background.loadImage();
				this.background.loadVideo(false);
			}
		},
		hasYoutubeVideo: function(){
			if ( this.background.model.get('video.youtubeID') && this.background.model.get('video.selector') == 'provider') {
                this.rootView.countYouTube += 1;
			}
		},
		prepare: function () {
			this.load();
			this.animation_in._render(0);
		},
		activate: function ( imediate ) {
			imediate ? this.animation.play() : this.animation.start();
		},
		deactivate: function () {
			//this.animation.stop();
		},
		renderAnimationAtTime: function ( time ) {
			this.animation._render(time);
			// Find out when this item animation in begins
			if ( typeof this.animation_in.tweens !== 'undefined' && !this.animStarted && time >= this.animation_in.tweens[ 0 ].delay + this.animation_in.tweens[ 0 ].duration ) {
				this.animStarted = true;
				this.trigger('start');
			}
			// Find out when this item animation out begins
			if ( typeof this.animation_out.tweens !== 'undefined' && !this.animEnded && time >= this.animation_out.tweens[ 0 ].delay + this.animation_out.tweens[ 0 ].duration ) {
				this.animEnded = true;
				this.trigger('end');
			}
		},
		resetAnimationFlags: function () {
			this.animStarted = false;
			this.animEnded = false;
		},
		resize: function(scale_factor){
            this.$el.data('scale_factor', scale_factor)
			//scale_factor = scale_factor > 1 ? 1 : scale_factor;
            var layout = this.rootView.getResponsiveMode();
            var fontSize = this.model.get('style_' + layout + '.font.size');
            var offset = this.model.get('style_' + layout + '.offset').toJSON();
            var width = this.model.get('style_' + layout + '.width');
            var height = this.model.get('style_' + layout + '.height');

            var newFontSize = Math.round( parseInt(fontSize) * scale_factor );
            var newWidth    = Math.round( width * scale_factor );
            var newHeight   = Math.round( height * scale_factor );

            var newOffsetX  = Math.round( offset.x * scale_factor );
            var newOffsetY  = Math.round( offset.y * scale_factor );

            if ( this.model.get('type') == 'text') {
                this.$el.css({
                    transform: 'scale(1,1)'
                })
                this.$('.item-offset').css({
                    width: newWidth + 'px',
                    height: newHeight + 'px',
                    transform: 'translate3d('+ newOffsetX +'px, '+ newOffsetY +'px, 0px)'
                })
                this.$el.find('.item-content').css({fontSize: newFontSize + 'px'})
            }
            else {
                this.$('.item-offset').css({
                    width: width + 'px',
                    height: height + 'px',
                    transform: 'translate3d('+ offset.x +'px, '+ offset.y +'px, 0px)'
                })
            }

		}
	});

	var ItemsView = B.CollectionView.extend({
		constructor: function ES_ItemsView( options ) {
			B.CollectionView.call(this, options)
		},
		itemView: ItemView
	});

	var SlideView = View.extend({
		events: {

		},
		views: {
			'items collection:items > .jsn-es-items': ItemsView,
			'background model:background > .slide-background-effect': BackgroundView.extend(),
		},
		bindings: [
			{ type: 'class', attr: { 'jsn-es-active': 'active' } }
		],
		constructor: function ES_SlideView( options ) {
			View.call(this, options)
		},
		initialize: function () {
			this.index = this.model.get('index');
			this.duration = this.model.get('duration');
			this.totalDuration = this.model.get('totalDuration');

			this.on('all', function ( type ) {
				this.rootView.trigger.apply(this.rootView, _(arguments).chain().slice(1).splice(0, 0, ('slide(' + this.index + '):' + type), this).value());
				this.rootView.trigger.apply(this.rootView, _(arguments).chain().slice(1).splice(0, 0, ('slide:' + type), this).value());
			});
			this.on('activate', this.activate);
			this.on('deactivate', this.deactivate);

			this.on('end', this.onSlideEnd);
			this.on('start', this.onSlideStart);

			this.on('video:ended', this.onVideoEnded);
		},

		ready: function () {
			var timelineMode = parseInt(this.model.root.get('timeline.mode'));
			switch ( parseInt(this.model.root.get('layout.type')) ) {
				case 1:
					//if (timelineMode == 2)
					//	break;
					//var transitionDuration = this.model.get('transition.duration');
					//_.each(this.items.subViews, function (itemView) {
					//	itemView.animation.delay += transitionDuration;
					//});
					//break;
				case 2:

					this.on('transition:enter', this.renderTransitionEnter);
					this.on('transition:leave', this.renderTransitionLeave);
					this.on('transition', this.renderBasicTransition);

					//this.on('animation:start', this.renderAnimationStart);
					//this.on('animation:end', this.renderAnimationEnd);
					//this.on('animation', this.renderAnimation);

					this.renderTransitionLeave();

					break;
			}
			this.listenTo(this.rootView, 'resize', this.onResize);
            this.hasYoutubeVideo()
		},
        hasYoutubeVideo: function(){
            if ( this.background.model.get('video.youtubeID') && this.background.model.get('video.selector') == 'provider') {
                this.rootView.countYouTube += 1;
            }
        },
		load: function () {
			if ( !this.loaded ) {
				this.loaded = true;
                if ( !this.background.model.get('video.youtubeID') && !this.background.model.get('video.vimeoID') && this.background.model.get('video.selector') == 'provider')
                    this.background.loadImage();
				this.background.loadVideo(true);
				this.rootView.getNextSlide(this.index).load();
				this.rootView.getPrevSlide(this.index).load();
				_.invoke(this.items.subViews, 'load');
			}
			this.background.$video && this.background.$video.get(0).play();
			this.background.resizeVideo();
		},
		prepare: function () {
			this.show();
			this.load();
            log('prepare')

			_.invoke(this.items.subViews, 'prepare');
			return this;
		},
		isActive: function () {
			return this.rootView.getActiveSlide() === this;
		},
		onVideoEnded: function () {
			this.slideHasEnded &&
			!this.hasVideoPlaying() &&
			this.rootView.next();
		},
		hasVideoPlaying: function() {
			return this.countPlayingVideo() != 0;
		},
		countPlayingVideo: function() {
			return _.reduce(this.items.subViews, function(count, item) {
				if (item.background.videoPlaying)
					count++;
				return count;
			}, 0);
		},
		stopAllVideos: function () {
            this.background.stopVideo();
			_(this.items.subViews).each(function ( item ) {
				item.background.stopVideo();
			});
		},
		playAllVideos: function () {
            this.background.playVideo();
		},
		onResize: function() {
			this.background.resizeVideo();
		},

		onSlideEnd: function () {
			log('slide end')
            this.stopAllVideos();
			_(this.items.subViews).invoke('resetAnimationFlags');
			// Check if slider type is carousel, trigger end for all items
			if ( this.rootView.model.get('layout.type') == ES_SLIDER_TYPE_CAROUSEL ) {
				_(this.items.subViews).invoke('trigger', 'end');
			}
            this.background.resetBackgroundPos()
            this.background.$el.parents('.jsn-es-background').removeClass('background-active');
		},
		onSlideStart: function () {
			this.slideHasEnded = false;
            this.background.renderBGTransition(this.model.get('duration'));
            if ( this.model.get('background.parallax.enable') ){//background-active
               this.background.$el.parents('.jsn-es-background').addClass('background-active');
            }
			// Check if slider type is carousel, trigger start for all items
			if ( this.rootView.model.get('layout.type') == ES_SLIDER_TYPE_CAROUSEL ) {
				_(this.items.subViews).invoke('trigger', 'start');
			}
            this.playAllVideos();
		},

		activate: function () {
			if ( this.activated )
				return this;
			this.activated = true;
			_.invoke(this.items.subViews, 'activate');
			return this;
		},
		deactivate: function () {
			if ( !this.activated )
				return this;
			log('deactivate');
			this.activated = false;
			_.invoke(this.items.subViews, 'deactivate');
			this.hide();

			return this;
		},

		renderTransitionEnter: function () {
			this.background.resizeVideo()
            this.prepare();

		},
		renderTransitionLeave: function () {
			log('slide leave')

			_.chain(this.items.subViews)
					.pluck('animation_out')
					.invoke('end');
			typeof this.rootView.activeIndex != 'undefined' &&
			this.rootView.getActiveSlide().trigger('start')
			this.trigger('end')

		},
		renderBasicTransition: function ( direction, side, progress ) {
			switch ( side ) {
				case 'right':
					_.each(this.items.subViews, function ( itemView ) {
						itemView.animation_in.seekPercent(1 - progress);
					}, this);
					break;
				case 'left':
					_.each(this.items.subViews, function ( itemView ) {
						itemView.animation_out.seekPercent(progress);
					}, this);
					break;
			}
		},
		renderTransition: function ( direction, side, progress ) {
			this.rootView.setProgress(progress * 100);
			switch ( side ) {
				case 'right':
					var time = (1 - progress) * 1000;
					_.each(this.items.subViews, function ( itemView ) {
						if ( itemView.animation_in.delay < 1000 )
							itemView.animation_in._render(time);
					}, this);
					break;
				case 'left':
					var time = progress * 1000 + this.duration + 1000;
					_.each(this.items.subViews, function ( itemView ) {
						if ( itemView.animation_out.delay + itemView.animation_out.duration > this.duration + 1000 )
							itemView.animation_out._render(time);
					}, this);
					break;
			}
		},

		renderAnimationStart: function () {
			this.load();
			_.each(this.items.subViews, function ( itemView ) {
				if ( itemView.animation_in.delay >= 1000 ) {
					itemView.animation_in._render(0)
				}
			}, this)
		},
		renderAnimationEnd: function () {
			_.each(this.items.subViews, function ( itemView ) {
				if ( itemView.animation_out.delay <= this.duration + 1000 ) {
					itemView.animation_out._render(this.duration + 2000)
				}
			}, this)
		},
		renderAnimation: function ( progress ) {
			var time = progress * this.duration;
            if ( this.background.model.get('kenburn.enable')) {
                //this.background.renderProgress(progress)
            }
			this.rootView.setProgress(progress * 100);
			_.each(this.items.subViews, function ( itemView ) {
				itemView.renderAnimationAtTime(time);
			}, this)
		},

		isOnViewport: function () {
			var vp_bounds = this.rootView.$viewport.get(0).getBoundingClientRect()
			var sl_bounds = this.el.getBoundingClientRect();
			return sl_bounds.right > vp_bounds.left || sl_bounds.left < vp_bounds.right;
		},
	});

	var SlidesView = B.CollectionView.extend({
		constructor: function ES_SlidesView( options ) {
			B.CollectionView.call(this, options)
		},
		itemView: SlideView
	});

	var SliderView = View.extend({
		constructor: function ES_SliderView( options ) {
            options.model.get('slides').reset( options.model.get('slides').filter(function(model){
                return model.get('hide') == false;
            }) );
			View.call(this, options)

			if ( options.rootURL ) {
				this.rootURL = options.rootURL;
			}

			return this
		},

		events: {
			//'touchstart .jsn-es-next': 'next',
			//'touchstart .jsn-es-prev': 'prev',
			'mousedown .jsn-es-next': 'next',
			'mousedown .jsn-es-prev': 'prev',
		},
		modelEvents: {
			'change:state.view_mode': 'changeLayoutMode'
		},

		views: {
			'slides collection:slides > .jsn-es-slides': SlidesView,
			'items collection:items > .jsn-es-global .jsn-es-items': ItemsView.extend({ itemView: ItemView.extend() }),
			'background model:background > .slider-background': BackgroundView.extend(),
		},
		bindings: [
			{
				type: 'style',
				attr: {
					'marginTop': 'style.margin.top',
					'marginBottom': 'style.margin.bottom',
					'marginLeft': 'style.margin.left',
					'marginRight': 'style.margin.right',
				},
			}
		],

		initialize: function () {
            if(arguments[0].rootURL) {
                this.rootURL = arguments[0].rootURL;
            }
			var self = this;
            this.scale_factor = 1;
			_(this).bindAll('resize', 'update', 'change', 'next', 'prev', 'pause', 'resume');

			sliders[ this.model.get('id') ] = this;
            this.countYouTube = 0;
			var css = _(this.model.get('custom_css')).prefixCSSRules('#' + this.$el.attr('id'));
			this.$el.before($('<style>').html(css));

			this.$('.jsn-es-nav.jsn-es-nav-buttons').each(function () {
				self.attachView(NavView.extend(), this, { model: self.model.get('nav') })
			});
			this.$('.jsn-es-pagination').each(function () {
				self.attachView(PaginationView.extend(), this, {
					collection: self.model.get('slides'),
					model: self.model.get('pagination')
				})
			});

			this.on('next', function () {
				this.change(this.getOffsetIndex(1), 'next');
			})
			this.on('prev', function () {
				this.change(this.getOffsetIndex(-1), 'prev');
			})
		},
		ready: function () {
            if ( this.countYouTube > 0) {
                $.getScript('https://www.youtube.com/iframe_api');

                setTimeout(function checkYT() {

                    if ( typeof exports.YT !== 'object' )
                        return setTimeout(checkYT, 1000);
                    if ( typeof exports.YT.Player !== 'function' )
                        return setTimeout(checkYT, 1000);
                    YT_API_LOADED = true;
                }, 1000);
            }
            if (navigator.userAgent.match(/iPad|iPod|iPhone/) && navigator.userAgent.match(/Safari/) ) {
                //$('meta[name="viewport"]').attr('content', 'width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1');

                //alert(navigator.userAgent)
                //$('body').css('width', $('body').width() + 1 + 'px')
            }
            //alert( $('body').width())
          
			this.setActiveSlide(0);

			this.$items = this.$('.jsn-es-item');
			this.$slides = this.$('.jsn-es-slides > .jsn-es-slide');
			this.$wrapper = this.$('.jsn-es-slides');
			this.$global = this.$('.jsn-es-global');
			this.$stage = this.$('.jsn-es-stage');
			this.$viewport = this.$('.jsn-es-viewport');
			this.$background = this.$('.slider-background');
			this.$progress = this.$('.jsn-es-slide-progress-bar');

			switch ( parseInt(this.model.get('layout.type')) ) {

				case 1: // Standard slider with no drag drop interaction
					this.controller = new ES_Standard_Controller(this);
					break;

				case 2: // Interactive slider
					this.controller = new ES_Interactive_Controller(this);
					break;
			}

			$(window)
				.on('resize', this.resize)
				.on('orientation', this.resize)
				.on('load', this.resize)
				//.on('blur', this.pause)
				//.on('focus', this.resume);

			this.defer(function () {

				Function('$', 'slider', 'slide', 'item', this.model.get('custom_js'))
					.call(this, $, this.slider, this.slide, this.item)

				_.each(this.items.subViews, function ( itemView ) {
					itemView.animation.start();
				});

				this.background.loadImage();
				//this.slides.subViews[ 0 ].load();
				this.slides.subViews[ 0 ].trigger('start');
				//$(window).trigger('resize')
				this.resize();
				this.trigger('change', 0);
				this.trigger('ready');
			})



		},
		resize: function () {
			var mode = this.getResponsiveMode();
			var padding = parseFloat(this.model.get('layout.padding'));
			var width = this.width = parseFloat(this.model.get('layout.' + mode + '_w'));
			var height = this.height = parseFloat(this.model.get('layout.' + mode + '_h'));

			var auto_width = this.model.get('layout.auto_w');
			var auto_height = this.model.get('layout.auto_h');
			var full_width = this.model.get('layout.full_w');
			var full_height = this.model.get('layout.full_h');
			var offset_left = 0;

			var outer_width = this.outer_width = this.$el.width();

			if ( full_width ) {
				var offset_left = -this.$el.offset().left;
				outer_width = this.outer_width = document.body.offsetWidth;
				//outer_width = this.outer_width = this.$el.get(0).offsetWidth;
			}
			if ( full_height )
				this.$el.height(window.innerHeight)
			else if ( !auto_height )
				this.$el.height(height)

			var outer_height = this.outer_height = this.$el.outerHeight();

			var outerRatio = outer_width / outer_height;
			var ratio = width / height;
			var scale_factor = Math.min(1, // Maximnun scale 1x
				ratio >= outerRatio ?
				outer_width / width : // Bigger than container horizontally
				outer_height / height); // Bigger than container vertically

            this.scale_factor = scale_factor;
			var scale_width = this.width = width * scale_factor;
			var scale_height = this.height = height * scale_factor;

			var stage_width = this.stage_width = auto_width ? outer_width : scale_width;
			var stage_height = this.stage_height = auto_height ? outer_height : scale_height;

			var scale_padding = padding * 2 * scale_factor;

			//if (stage_width + padding > outer_width)
			//	stage_width = outer_width - padding;

			this.setPerspective(stage_width * 2);
			this.$el.css({
				marginTop: padding,
				marginBottom: padding,
				height: full_height || auto_height ? outer_height : scale_height + (padding)
			})
			this.$viewport.css({
				width: outer_width,
				marginTop: -padding,
				marginBottom: -padding,
				paddingTop: padding,
				paddingBottom: padding,
				marginLeft: offset_left + 'px',
				marginRight: offset_left + 'px',
			})
			this.$stage
				.css({
					width: stage_width,
					height: stage_height,
					marginLeft: Math.floor(stage_width / -2),
					marginTop: Math.floor(stage_height / -2),
				})
			this.$items.css({
				transform: 'scale(' + scale_factor + ',' + scale_factor + ')'
			})
            //fix blurry text bug when scale item
            this.$items.trigger('resize:item', scale_factor);

			this.trigger('resize');
			this.update();
		},

		update: function () {
			_(this.slides.subViews).each(function ( slide ) {
                if( !slide.model.get('hide') ) {
                    _(slide.items.subViews).each(function ( item ) {
                        item.__dataBinding.updateView();
                    })
                }
			})
			_(this.items.subViews).each(function ( item ) {
				item.__dataBinding.updateView();
			})
		},

		change: function ( index, direction ) {
            if(this.getSlideAt(index)) {
				var current = this.getActiveSlide();
                current.stopAllVideos();
                current.trigger('end');
                this.trigger('change', index, direction);
                this.getSlideAt(index).trigger('start');
            }
		},
		next: function ( e ) {
			// If this function is called by mouse click
			// force next slide
			if ( e ) {
				e.preventDefault();
				e.stopPropagation();
				this.getActiveSlide().stopAllVideos();
				this.trigger('next');
			}
			// If this function is called by controllers when slide timer ends
			// Check if any video playing, if not then proceed
			else {

				if (  this.model.get('autoSlide') && this.model.get('autoSlide.enable') ) {
					if ( this.model.get('repeat') && !this.model.get('repeat.enable') ) {
						if ( this.getNextIndex() == 0 && this.model.get('layout.type') == 1 ) {
							this.trigger('pause:transition');
						}
						else {
							this.getActiveSlide().slideHasEnded = true;
							if (!this.getActiveSlide().hasVideoPlaying()) {
								this.trigger('next');
							}
						}
					}
					else {
						this.getActiveSlide().slideHasEnded = true;
						if (!this.getActiveSlide().hasVideoPlaying()) {
							this.trigger('next');
						}
					}
				}
				else {
					// nothing
				}
			}
		},
		prev: function ( e ) {
			if ( e ) {
				e.preventDefault();
				e.stopPropagation();
			}
			this.trigger('prev');
		},
		pause: function ( e ) {
			this.trigger('pause');
		},
		resume: function ( e ) {
			this.trigger('resume');
		},

		slider: function ( id ) {
			return sliders[ id ];
		},

		setProgress: function ( percent ) {
			this.$progress.css({ width: percent + '%' });
			return this;
		},

		getResponsiveMode: function () {
			//var full_width = this.model.get('layout.full_w');
			//var width = this.outer_width || (full_width ? document.body.offsetWidth : this.$el.width());
			var width = document.body.offsetWidth;
			if ( this.model.get('layout.mobile') && width <= this.model.get('layout.mobile_under') ) {
				this.model.set('state.view_mode', 'mobile');
				return 'mobile';
			}

			if ( this.model.get('layout.tablet') && width <= this.model.get('layout.tablet_under') ) {
				this.model.set('state.view_mode', 'tablet');
				return 'tablet';
			}

			if ( this.model.get('layout.laptop') && width <= this.model.get('layout.laptop_under') ) {
				this.model.set('state.view_mode', 'laptop');
				return 'laptop';
			}

			this.model.set('state.view_mode', 'desktop');
			return 'desktop';
		},
		setPerspective: function ( distance ) {
			//this.$viewport.css('perspective', distance + 'px');
			//this.$stage.css('transform', 'perspective(' + distance + 'px)');
		},

		getOffsetIndex: function ( offset, from ) {
			return this.slides.collection.offsetIndex(offset, from);
		},
		getNextIndex: function ( offset, from ) {
			return this.slides.collection.nextIndex(offset, from);
		},
		getPrevIndex: function ( offset, from ) {
			return this.slides.collection.prevIndex(offset, from);
		},
		getOffsetSlide: function ( offset, from ) {
			return this.getSlideAt(this.getOffsetIndex(offset, from))
		},
		getNextSlide: function ( offset, from ) {
            return this.getSlideAt(this.getNextIndex(offset, from));
		},
		getPrevSlide: function ( offset, from ) {
			return this.getSlideAt(this.getPrevIndex(offset, from));
		},
		getSlideAt: function ( index ) {
			return this.slides.subViews[ index ];
		},
		getActiveSlide: function () {
			return this.getSlideAt(this.activeIndex);
		},
		setActiveSlide: function ( index ) {
			this.activeIndex = !_.isNaN(index) ? index : this.activeIndex;
			this.activeSlide = this.getSlideAt(this.activeIndex);
			this.activeSlide.model.set('active', true);
			return this.activeSlide;
		},

		changeLayoutMode: function () {
			this.$el.trigger('es:update_layout');
		},
		clickNextBtn: function () {
			this.$el.trigger('es:next')
		},
		clickPrevBtn: function () {
			this.$el.trigger('es:prev')
		},

	}, {

		counter: 0,
		fonts: new ES_Fonts,
		getSliderById: function ( id ) {

		}

	});

	exports.EasySlider = SliderView;



	function roundNumber( n, closest ) {
		_.isUndefined(closest) && (closest = 1);
		return Math.round(n / closest) * closest;
	}

}(window, jQuery, _, JSNES_Backbone);