package com.delmar.base.model;

import com.delmar.core.model.CoreModel;

/**
 * @author 刘大磊 2014年12月22日 上午9:47:01
 */
public class Commdity extends CoreModel {

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_commdity.code
     *
     * @mbggenerated
     */
    private String code;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_commdity.name
     *
     * @mbggenerated
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_commdity.ename
     *
     * @mbggenerated
     */
    private String ename;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_commdity.remark
     *
     * @mbggenerated
     */
    private String remark;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_commdity.id
     *
     * @return the value of base_commdity.id
     *
     * @mbggenerated
     */
    @Override
	public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_commdity.id
     *
     * @param id the value for base_commdity.id
     *
     * @mbggenerated
     */
    @Override
	public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_commdity.code
     *
     * @return the value of base_commdity.code
     *
     * @mbggenerated
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_commdity.code
     *
     * @param code the value for base_commdity.code
     *
     * @mbggenerated
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_commdity.name
     *
     * @return the value of base_commdity.name
     *
     * @mbggenerated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_commdity.name
     *
     * @param name the value for base_commdity.name
     *
     * @mbggenerated
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_commdity.ename
     *
     * @return the value of base_commdity.ename
     *
     * @mbggenerated
     */
    public String getEname() {
        return ename;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_commdity.ename
     *
     * @param ename the value for base_commdity.ename
     *
     * @mbggenerated
     */
    public void setEname(String ename) {
        this.ename = ename == null ? null : ename.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_commdity.remark
     *
     * @return the value of base_commdity.remark
     *
     * @mbggenerated
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_commdity.remark
     *
     * @param remark the value for base_commdity.remark
     *
     * @mbggenerated
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}