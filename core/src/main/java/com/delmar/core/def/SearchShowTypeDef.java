package com.delmar.core.def;

/**
 * @author dalei.liu 2016/8/29 20:43.
 */
public enum  SearchShowTypeDef {
    INPUT(1,"输入框"),SELECT(2,"下拉框"),DATEPICKER(3,"日期选择"),DATETIMEPICKER(4,"日期时间选择");
    SearchShowTypeDef(int key,String desc)
    {
        this.key=key;
        this.desc=desc;
    }
    private final int key;
    private final String desc;

    public int getKey() {
        return key;
    }

    public String getDesc() {
        return desc;
    }
}
