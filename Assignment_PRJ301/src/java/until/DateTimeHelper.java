/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package until;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author ACER PRENDATOR
 */
public class DateTimeHelper {
    public static Date toDate(String value,String format) throws ParseException{
        return new SimpleDateFormat(format).parse(value);
    }
    
}
