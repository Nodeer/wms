package com.delmar.core.dto;

import lombok.Data;

/**
 * Created by admin on 2016/8/23.
 */
@Data
public class ForeignKey implements java.io.Serializable{
    private   String  pkTableName;
    private   String pkColumnName;
    private   String fkTableName;
    private   String fkColumnName;
    private   String fkName;
    private   String pkName;
}
