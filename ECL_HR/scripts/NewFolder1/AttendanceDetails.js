//'ui.router', 'ui.calendar'
var uiroute = angular
    .module('myApp',['ui.router','ui.calendar']).controller("CalendarController", ['$scope', '$http', '$rootScope', function ( $scope, $http, $rootScope) {

        // get Attendance data from database
        $http({
            method: 'GET',
            //url:'/Calender_Bootstrap/external-calendar.json'
            url: '/Attendance/GetAttendanceDetails'
        }).then(function (success) {
            var data = success.data;
            var calEventsExt = {
                id: 2,
                visible: true,
                //color: 'green',
                textColor: '#fff',
                className: ['fc-id-2'],
                events: []
            };

            calEventsExt.events = angular.copy(data);
            $scope.eventSources.push(calEventsExt);

            if (!event.start.isBetween(view.intervalStart - 1, view.intervalEnd)) { return false; }
            for (var i = 0; i < $scope.eventSources[1].events.length; i++) {
                var event = $scope.eventSources[1].events[i];
                var eventDate = moment(event.start).format("YYYY-MM-DD");
                var bgcolor = event.color;
                var tds = $("td.fc-day[data-date='" + eventDate + "']");
                for (var j = 0; j < tds.length; j++) {
                    var td = tds[j];
                    $(td).css("background", bgcolor);
                };
            };
        }, function (error) {

        });
        // get Attendance data from database

        $scope.today = new Date();
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var sampledate = new Date(y, m, d - 5);
        var date1 = "01/01/2018";

        $scope.calEventsPers = {
            id: 0,
            visible: true,
            className: ['fc-id-0'],
            //events: [
            //    { id: 324, title: 'All Day Event', start: new Date(y, m, 1) },
            //    { title: 'Long Event', start: new Date(y, m, d - 5), end: new Date(y, m, d - 2) },
            //    { id: 999, title: 'Repeating Event', start: new Date(y, m, d - 3, 16, 0), allDay: false },
            //    { id: 999, title: 'Repeating Event', start: new Date(y, m, d + 4, 16, 0), allDay: false },
            //    { title: 'Birthday Party', start: new Date(y, m, d + 1, 19, 0), end: new Date(y, m, d + 1, 22, 30), allDay: false },
            //    { title: 'Click for Google', start: new Date(y, m, 28), end: new Date(y, m, 29), url: 'http://google.com/' }
            //]
        };
        $scope.eventSources = [$scope.calEventsPers];

        $scope.uiConfig = {
            calendar: {
                height: 368,
                editable: false,
                default:1,
                header: {
                    //left: 'month,basicWeek,basicDay',
                    left: 'title',
                    center: '',
                    right: 'prevYear,prev,next,nextYear, today'
                    //right: 'today'
                },
                defaultView: 'month',
                eventClick: $scope.alertOnEventClick,
                eventDrop: $scope.alertOnDrop,
                eventResize: $scope.alertOnResize,
                // Select options  
                selectable: false,
                selectHelper: false,
                unselectAuto: false,
                eventRender: function (event, element, view) {
                    if (!event.start.isBetween(view.intervalStart-1, view.intervalEnd)) { return false; }
                    var eventDate = moment(event.start).format("YYYY-MM-DD");
                    //var calendarDate = $('#activitiesCalendar').fullCalendar('getDate');
                    var bgcolor = event.color;
                    var tds = $("td.fc-day[data-date='" + eventDate + "']");
                    for (var j = 0; j < tds.length; j++) {
                        var td = tds[j];
                        $(td).css("background", bgcolor);
                    };
                    
                },
                viewRender: function (view, element) {
                    var v = view;
                }
                //dayRender: function (date, cell) {
                //    //$r = $scope.getDateInfo(date);
                //    var $r = moment(date).format("YYYY-MM-DD");
                //    if ($r) {
                //        cell.css("background-color", "#ccf3ff");
                //    }
                //    cell.html('<i class="fa fa-line-chart"  ></i>' + $r.amount + '<br/><i class="fa fa-user" ></i>' + $r.users + '<br/><i class="fa fa-shopping-basket" ></i>' + $r.income);
                //}
                //select: function (start, end) {
                //    var title = prompt('Event Title:');
                //    var eventData;
                //    if (title) {
                //        eventData = {
                //            title: title,
                //            start: start.format(),
                //            end: end.format()
                //        };
                //        $scope.addEvent(eventData);
                //    }
                //}
            }
        };

        $scope.alertOnEventClick = function (event, allDay, jsEvent, view) {
            alert(event.title + ' was clicked ');
        };
        /* alert on Drop */
        $scope.alertOnDrop = function (event, dayDelta, minuteDelta, allDay, revertFunc, jsEvent, ui, view) {
            alert('Event Droped to make dayDelta ' + dayDelta);
        };
        /* alert on Resize */
        $scope.alertOnResize = function (event, dayDelta, minuteDelta, revertFunc, jsEvent, ui, view) {
            alert('Event Resized to make dayDelta ' + minuteDelta);
        };

        /* add custom event*/
        $scope.addEvent = function (newEvent) {
            if (newEvent) {
                $scope.calEventsPers.events.push(newEvent);
            }
        };

        /* remove event */
        $scope.remove = function (index) {
            $scope.calEventsPers.events.splice(index, 1);
        };
        /* Change View */
        $scope.changeView = function (view, calendar) {
            $scope.myCalendar.fullCalendar('changeView', view);
        };
        /* Change View */
        $scope.renderCalender = function (calendar) {
            $scope.myCalendar.fullCalendar('render');
        };

        $scope.toggleEventSource = function () {
           
        };
        $scope.$on('$ionicView.enter', function() { 
            
        });
        //$scope.$ionic.DomUtil.ready(function () {
        //    uiCalendarConfig.calendars['myCalendar'].fullCalendar('changeView', 'month');
        //});
}]);
