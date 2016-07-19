/**
 *
 */
package com.fil.crm.web.helper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @author ManmeetFIL
 *
 */
public class DateHelper {

	private static SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

	public enum DateRange {
		TODAY, THIS_WEEK, THIS_MONTH, NEXT_MONTH, PREVIOUS_MONTH;
	}

	public static List<String> getDateRange(DateRange range) throws ParseException {
		List<String> dateRange = new ArrayList<String>();
		LocalDate today = LocalDate.now();
		switch (range) {
		case TODAY:
			dateRange.add(today.toString());
			dateRange.add(today.toString());
			break;
		case THIS_WEEK:
			today = LocalDate.now();
			LocalDate monday = today;
			while (monday.getDayOfWeek() != DayOfWeek.MONDAY) {
				monday = monday.minusDays(1);
			}
			LocalDate sunday = today;
			while (sunday.getDayOfWeek() != DayOfWeek.SUNDAY) {
				sunday = sunday.plusDays(1);
			}
			dateRange.add(monday.toString());
			dateRange.add(sunday.toString());
			break;
		case THIS_MONTH:
			return getMonthRange(0);
		case NEXT_MONTH:
			return getMonthRange(1);
		case PREVIOUS_MONTH:
			return getMonthRange(-1);
		}
		return dateRange;
	}

	private static List<String> getMonthRange(int index) {
		List<String> dateRange = new ArrayList<String>();
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.MONTH, index);
		calendar.set(Calendar.DATE, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));
		Date monthFirstDay = calendar.getTime();
		dateRange.add(format1.format(monthFirstDay));
		calendar.set(Calendar.DATE, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		Date monthLastDay = calendar.getTime();
		dateRange.add(format1.format(monthLastDay));
		return dateRange;
	}
}
