package com.node.eduoa;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: linfeng at Administrator
 * Date: 13-7-6
 * Time: 下午5:32
 * To change this template use File | Settings | File Templates.
 */
public class YearUtils {

    public static List<Integer> getYears(Integer limit) {
        List<Integer> years = new ArrayList<Integer>();
        Calendar calendar = Calendar.getInstance();
        int year = calendar.get(Calendar.YEAR);
        int count = year+limit;
        int i=(year-limit);
        for (; i<count; i++) {
            years.add(i);
        }
        return years;
    }

}
