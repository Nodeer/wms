package com.delmar.core.def;

/**
 * @author dalei.liu 2016/8/29 20:44.
 */
public enum RelOperDef {
    LIKE(1,"like"),EQUAL(2,"="),GREATER_EQ_THAN(3,">="),GREATER_THAN(4,">"),LESS_EQ_THAN(5,"<="),LESS_THAN(6,"<");
    RelOperDef(int key,String desc)
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
